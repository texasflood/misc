import sys

people = raw_input('Enter people split by a comma:\n')
people = [x.strip() for x in people.split(',')]
if len(people) != len(set(people)):
  print 'There are duplicates in the list'
  sys.exit(-1)

print 'People array:'
print people
peopleDict = {}
for person in people:
  idx = 1
  peopleDict[person] = []
  while True:
    while True:
      finished = raw_input('Did ' + person + ' pay for anything? (y/n)\n')
      if finished in ['y', 'n']:
        break
      else:
        print 'Enter either y or n!'
    if finished == 'n':
      break
    print 'Entering expense number ' + str(idx) + ' for ' + person
    expense = {}
    expense['name'] = raw_input('For ' + person + ' enter expense name\n')
    expense['amount'] = float(raw_input('For expense ' + expense['name'] + ' incurred by ' + person + ', enter amount\n'))
    expense['responsibles'] = raw_input('Enter people responsible split by a comma:\n')
    expense['responsibles'] = [x.strip() for x in expense['responsibles'].split(',')]
    peopleDict[person].append(expense)
    idx += 1
    while True:
      finished = raw_input('Finished with ' + person + '\'s expenses? (y/n)\n')
      if finished in ['y', 'n']:
        break
      else:
        print 'Enter either y or n!'
    if finished == 'y':
      break

print peopleDict

owedArray = []
for i in people:
  owedArray.append([0]*len(people))

for person in people:
  for expense in peopleDict[person]:
    for debtor in expense['responsibles']:
      if person != debtor:
        owedArray[people.index(person)][people.index(debtor)] += float(expense['amount'])/len(expense['responsibles'])
        owedArray[people.index(debtor)][people.index(person)] -= float(expense['amount'])/len(expense['responsibles'])

for idx, debtors in enumerate(owedArray):
  print people[idx] + ' is owed:'
  for jdx, debtor in enumerate(debtors):
    print people[jdx] + u' \xA3' + str(debtor)

print owedArray
