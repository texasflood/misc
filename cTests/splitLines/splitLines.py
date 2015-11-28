import sys

line_length = 15

assert len(sys.argv) == 2

with open(sys.argv[1], 'r') as inputFile:
    inFileStr = inputFile.read()

inFileList = inFileStr.split()

lines = []
current_words = ''
for word in inFileList:
    assert len(word) < line_length
    new_length = len(current_words) + len(word)
    if new_length > line_length:
        if current_words[-1] == ' ':
            lines.append(current_words[:-1])
        else:
            lines.append(current_words)

        current_words = word
        if len(word) != line_length:
            current_words += ' '
    else:
        current_words += word
        if new_length != line_length:
            current_words += ' '

for idx, line in enumerate(lines):
    print(line)
    print(len(line))
    assert len(line) <= line_length
    if idx != len(lines) - 1:
        assert len(lines[idx + 1].split()[0]) + len(line) + 1 > line_length

