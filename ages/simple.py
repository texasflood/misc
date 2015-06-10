offset = 1900

data = [[1901, 1907], [1908, 1939], [1920, 1939]]*5000000
noOfAlive = [0]*1000

#data.sort(key=lambda person: person[0])

for i in range(len(data)):
  for j in range(data[i][0] - offset, data[i][1] - offset):
    if j < 0:
      j = 0
    elif j >= len(noOfAlive):
      continue
    noOfAlive[j] += 1

print noOfAlive
