offset = 1900
count = 0

data = [[1901, 1907], [1908, 1939], [1920, 1939]]*5000000
noOfAlive = [0]*1000

for i in range(len(data)):
  noOfAlive[data[i][0] - 1900] += 1
  noOfAlive[data[i][1] - 1900] -= 1

for i in range(len(noOfAlive)):
  count += noOfAlive[i]
  noOfAlive[i] = count


print noOfAlive
