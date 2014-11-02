#include <iostream>
#include <random>
#include <vector>
bool shouldIHit (std::vector<int> headDeck, std::vector<int> playerCards, std::vector<int> dealerCards);
bool hitMe (std::vector<int> deck, std::vector<int> playerCards, std::vector<int> dealerCards);
double whatHappens (std::vector<int> headDeck, std::vector<int> playerCards, std::vector<int> dealerCards, double headProbValue, double& currentProb);
double probOfCard (int card, std::vector<int> deck);
int vectorSum (std::vector<int> inputVector);
void vectorPopValue (int popValue, std::vector<int>& theVector);
int whoWins (std::vector<int> playerCards, std::vector<int> dealerCards);
int getCard (std::vector<int>& deck);
void printVector (std::vector<int> theVector);

std::vector<int> standard21 = std::vector<int>();
double losingProb = 0;
double winningProb = 0;
/***To do -- make dealer cleverer so that if it is a draw, they only ask for a hit if there is a good chance of them
 * winning from it ***/
int main()
{
  standard21.push_back (10);
  standard21.push_back (5);
  standard21.push_back (6);
  int draws = 0;
  int losses = 0;
  int wins = 0;
  int reps = 10;
  for (int noOfGames = 0; noOfGames < reps; ++noOfGames)
  {
    std::vector<int> playerCards = std::vector<int>();
    std::vector<int> dealerCards = std::vector<int>();
    std::vector<int> deck = std::vector<int>();
    for (int i = 1; i <= 13; ++i)
    {
      for (int j = 0; j < 4; j++)
      {
        deck.push_back ((i > 10) ? 10 : i);
      }
    }
    playerCards.push_back(getCard(deck));
    playerCards.push_back(getCard(deck));
    dealerCards.push_back(getCard(deck));
    std::cout << "Player Cards:" << std::endl;
    printVector (playerCards);
    std::cout << "Dealer Cards:" << std::endl;
    printVector (dealerCards);
    double probValue = 1;
    bool gameFinished = false;
    while (!gameFinished)
    {
      if (vectorSum (playerCards) < 15)
      {
        gameFinished = false;
      }
      else
      {
        gameFinished = !(shouldIHit (deck, playerCards, dealerCards));
      }
      if (!gameFinished)
      {
        int randomCard = getCard(deck);
        std::cout << "Hit me!" << std::endl;
        std::cout << "Player gets dealt a " << randomCard << std::endl;
        playerCards.push_back (randomCard);
        if (vectorSum (playerCards) > 21)
        {
          gameFinished = true;
        }
      }
    }

    gameFinished = false;

    while (!gameFinished)
    {
      int randomCard = getCard(deck);
      std::cout << "Dealer hits, gets " << randomCard << std::endl;
      dealerCards.push_back(randomCard);

      if ((vectorSum (dealerCards) > 21) && (vectorSum (playerCards) > 21))
      {
        draws++;
        gameFinished = true;
        std::cout << "Draw" << std::endl;
      }
      else if (vectorSum (playerCards) > 21)
      {
        losses++;
        gameFinished = true;
        std::cout << "Dealer wins" << std::endl;
      }
      else if (vectorSum (dealerCards) >= 17)
      {
        gameFinished = true;
        int theWinner = whoWins (playerCards, dealerCards);
        if (theWinner == -1)
        {
          std::cout << "Dealer wins" << std::endl;
          losses++;
        }
        else if (theWinner == 1)
        {
          wins++;
          std::cout << "Player wins" << std::endl;
        }
        else
        {
          draws++;
          std::cout << "Draw" << std::endl;
        }
      }
    }
  }
  std::cout << "No of wins = " << wins << std::endl;
  std::cout << "No of losses = " << losses << std::endl;
  std::cout << "No of draws = " << draws << std::endl;
  std::cout << "Winning percentage = " << ((float)wins*100)/(wins+losses+draws) << std::endl;
}

bool shouldIHit (std::vector<int> headDeck, std::vector<int> playerCards, std::vector<int> dealerCards)
{
  double winningProbHit = 0;
  double currentProb = 0;
  double winningProbStick = whatHappens (headDeck, playerCards, dealerCards, 0, currentProb);
  //double winningProbStick = winningProb;
  winningProb = 0;
  losingProb = 0;
  if (winningProbStick > 0.5 || vectorSum (playerCards) > 20 || whoWins (playerCards, standard21) >= 0)
  {
    return false;
  }
  else if (playerCards.size() == 2)
  {
    if ((playerCards[0] == 1 && playerCards[1] == 10) || (playerCards[1] == 1 && playerCards[0] == 10))
    {
      return false;
    }
  }
  for (int i = 1; i < 11; ++i)
  {
    std::vector<int> deck = std::vector<int>(headDeck.begin(), headDeck.end());
    std::vector<int> modifiedPlayerCards = std::vector<int>(playerCards.begin(), playerCards.end());
    double probValue = probOfCard (i, deck);
    vectorPopValue (i, deck);
    modifiedPlayerCards.push_back(i);
    double currentProb = 0;
    winningProbHit += whatHappens (deck, modifiedPlayerCards, dealerCards, probValue, currentProb);
    //winningProbHit += winningProb;
    winningProb = 0;
    losingProb = 0;
    if (winningProbHit > winningProbStick || winningProbHit > 0.5)
    {
      return true;
    }
    //else
    //{
    //  winningProbHit = 0;
    //}
    if (shouldIHit (deck, modifiedPlayerCards, dealerCards))
    {
      winningProbHit = 0;
      for (int j = 1; j < 11; ++j)
      {
        std::vector<int> deck2 = std::vector<int>(deck.begin(), deck.end());
        std::vector<int> modifiedPlayerCards2 = std::vector<int>(modifiedPlayerCards.begin(), modifiedPlayerCards.end());
        modifiedPlayerCards2.push_back (j);
        vectorPopValue (j, deck);
        double probValue2 = probOfCard (j, deck) * probValue;
        double currentProb = 0;
        winningProbHit += whatHappens (deck2, modifiedPlayerCards2, dealerCards, probValue2, currentProb);
        //winningProbHit += winningProb;
        winningProb = 0;
        losingProb = 0;
      }
    }
  }
  std::cout << "Winning prob from hitting = " << winningProbHit << ", Winning prob stick = " << winningProbStick << std::endl;
  return (winningProbStick <= winningProbHit);
}

double whatHappens (std::vector<int> headDeck, std::vector<int> playerCards, std::vector<int> dealerCards, double headProbValue, double &currentProb)
{
  for (int i = 1; i < 11; i++)
  {
    std::vector<int> deck = std::vector<int>(headDeck.begin(), headDeck.end());
    std::vector<int> modifiedDealerCards = std::vector<int>(dealerCards.begin(), dealerCards.end());
    modifiedDealerCards.push_back(i);

    double probValue = headProbValue * probOfCard (i, deck);
    vectorPopValue (i, deck);
    if (modifiedDealerCards.size() == 2)
    {
      if ((modifiedDealerCards[0] == 1 && modifiedDealerCards[1] == 10) || (modifiedDealerCards[0] == 10 && modifiedDealerCards[1] == 1))
      {
        losingProb += probValue;
        continue;
      }
    }
    else if (playerCards.size() == 2)
    {
      if ((playerCards[0] == 1 && playerCards[1] == 10) || (playerCards[0] == 10 && playerCards[1] == 1))
      {
        losingProb = 0;
        winningProb = 1;
        break;
      }
    }

    if (vectorSum (modifiedDealerCards) < 17)
    {
      currentProb += whatHappens (deck, playerCards, modifiedDealerCards, probValue, currentProb);
      continue;
    }
    else if (vectorSum (modifiedDealerCards) > 21)
    {
      currentProb += probValue;
      continue;
    }

    int winner = whoWins (playerCards, modifiedDealerCards);
    if (winner == -1)
    {
      losingProb += probValue;
    }
    else
    {
      winningProb += probValue;
    }
  }
  return currentProb;
}

double probOfCard (int card, std::vector<int> deck)
{
  double probability = 0;
  int count = 0;
  if (!deck.empty())
  {
    for (int i = 0; i < deck.size(); i++)
    {
      if (deck[i] == card)
      {
        ++count;
      }
    }
    return ((double)count)/((double)(deck.size()));
  }
  return 0;
}

int vectorSum (std::vector<int> inputVector)
{
  int sum = 0;
  if (!inputVector.empty())
  {
    for (int i = 0; i < inputVector.size(); ++i)
    {
      sum += inputVector[i];
    }
  }
  return sum;
}

void vectorPopValue (int popValue, std::vector<int>& theVector)
{
  if (!theVector.empty())
  {
    for (int i = 0; i < theVector.size(); i++)
    {
      if (theVector[i] == popValue)
      {
        theVector.erase(theVector.begin() + i);
        break;
      }
    }
  }
}

int whoWins (std::vector<int> playerCards, std::vector<int> dealerCards)
{
  if (playerCards.empty() || dealerCards.empty())
  {
    std::cerr << "Passed empty cards to whoWins" << std::endl;
    return 0;
  }

  bool playerHasBlackJack = false;
  bool dealerHasBlackJack = false;

  if (dealerCards.size() == 2)
  {
    if (((dealerCards[0] == 1) && (dealerCards[1] == 10)) || ((dealerCards[0] == 10) && (dealerCards[1] == 1)))
    {
      dealerHasBlackJack = true;
    }
  }

  if (playerCards.size() == 2)
  {
    if (((playerCards[0] == 1) && (playerCards[1] == 10)) || ((playerCards[0] == 10) && (playerCards[1] == 1)))
    {
      playerHasBlackJack = true;
    }
  }

  if (dealerHasBlackJack)
  {
    return -1;
  }
  else if (playerHasBlackJack)
  {
    return 1;
  }

  int noOfAces = 0;
  int playerScore = 0;
  for (int i = 0; i < playerCards.size(); ++i)
  {
    if (playerCards[i] == 1)
    {
      noOfAces++;
      playerScore++;
    }
    else
    {
      playerScore += playerCards[i];
    }
  }

  for (int i = 0; i < noOfAces; ++i)
  {
    if (playerScore > 11)
    {
      break;
    }
    else
    {
      playerScore += 10;
    }
  }

  noOfAces = 0;
  int dealerScore = 0;
  for (int i = 0; i < dealerCards.size(); ++i)
  {
    if (dealerCards[i] == 1)
    {
      noOfAces++;
      dealerScore++;
    }
    else
    {
      dealerScore += dealerCards[i];
    }
  }

  for (int i = 0; i < noOfAces; ++i)
  {
    if (dealerScore > 11)
    {
      break;
    }
    else
    {
      dealerScore += 10;
    }
  }

  if (playerScore > 21 && dealerScore > 21)
  {
    return 0;
  }
  else if (playerScore > 21)
  {
    return -1;
  }
  else if (dealerScore > 21)
  {
    return 1;
  }
  else
  {
    return ((playerScore > dealerScore) ? 1 : -1);
  }
}

int getCard (std::vector<int>& deck)
{
  int size = deck.size();
  if (size != 0)
  {
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<> dis (0, size - 1);
    int randomPos = dis(gen);
    int randomCard = deck[randomPos];
    deck.erase (deck.begin() + randomPos);
    return randomCard;
  }
  std::cerr << "Empty deck" << std::endl;
  return -1;
}

void printVector (std::vector<int> theVector)
{
  if (!theVector.empty())
  {
    for (int i = 0; i < theVector.size(); ++i)
    {
      std::cout << theVector[i] << std::endl;
    }
  }
}
