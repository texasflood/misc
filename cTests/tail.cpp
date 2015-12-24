#include <fstream>
#include <iostream>
#include <string>
#include <queue>

using std::cout;
using std::endl;

int main(int argc, char* argv[])
{
    if (argc != 3) {
        cout << "Usage: tail [FILE] [NO OF LINES]\n";
        return -1;
    }

    int tail_len = std::stoi(argv[2]);
    std::ifstream file(argv[1]);
    std::string line;
    if (file.is_open())
    {
        std::queue<std::string> last_lines;
        int i = 0;
        while (getline(file, line))
        {
            last_lines.push(line);
            if (i >= tail_len)
            {
                last_lines.pop();
            }
            ++i;
        }
        file.close();

        while (!last_lines.empty())
        {
            cout << last_lines.front() << endl;
            last_lines.pop();
        }
    }
    else
    {
        cout << "Failed to open file " << argv[1] << "\n";
    }
}
