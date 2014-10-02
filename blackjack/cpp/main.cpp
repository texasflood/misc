#include <iostream>
#include <random>
#include <vector>
bool hitMe (std::vector<int> deck, std::vector<int> playerCards, std::vector<int> dealerCards);
void whatHappens (std::vector<int> headDeck, std::vector<int> playerCards, std::vector<int> dealerCards, double headProbValue);
double probOfCard (int card, std::vector<int> deck);
int vectorSum (std::vector<int> inputVector);
void vectorPopValue (int popValue, std::vector<int>& theVector);
int whoWins (std::vector<int> playerCards, std::vector<int> dealerCards);
int getCard (std::vector<int>& deck);
void printVector (std::vector<int> theVector);

double losingProb = 0;
double winningProb = 0;

int main()
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

    whatHappens (deck, playerCards, dealerCards, probValue);
    std::cout << "Losing probability: " << losingProb << std::endl;
    std::cout << "Winning probability: " << winningProb << std::endl;
    std::cout << "Total Probability: " << winningProb + losingProb << std::endl;

    return 0;
}

void whatHappens (std::vector<int> headDeck, std::vector<int> playerCards, std::vector<int> dealerCards, double headProbValue)
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


        if (vectorSum (modifiedDealerCards) > 21)
        {
            winningProb += probValue;
            continue;
        }

        int winner = whoWins (playerCards, modifiedDealerCards);
        if (winner == 0)
        {
            whatHappens (deck, playerCards, modifiedDealerCards, probValue);
        }
        else if (winner == 1)
        {
            whatHappens (deck, playerCards, modifiedDealerCards, probValue);
        }
        else if (winner == -1)
        {
            losingProb += probValue;
        }
    }
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
