class MinStack:

    def __init__(self):
      self.STACK =[]
      self.MIN =[]

    def push(self, val: int) -> None:
      self.STACK.append(val)
      MIN = self.MIN
      MIN.append(val if not MIN else min(val,MIN[-1]))

    def pop(self) -> None:
        self.STACK.pop()
        self.MIN.pop()

    def top(self) -> int:
        return self.STACK[-1]

    def getMin(self) -> int:
        return self.MIN[-1]
        


# Your MinStack object will be instantiated and called as such:
# obj = MinStack()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.getMin()