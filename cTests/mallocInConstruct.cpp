    class stack {
      private:
        int * stackPointer;
      public:
        tripleStack (int size) {
          stackPointer = (int *) malloc (sizeof(int) * stackSize);
        }
        int peek (int pos) {
          return *(stackPointer + pos); //pos < size
        }
    }
