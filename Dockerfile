FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3
CMD ["python3", "-c", "\
def total_sum_cal(n):\n\
    total_sum = 0\n\
    while n > 0:\n\
        digit = n % 10\n\
        total_sum += digit ** 2\n\
        n //= 10\n\
    return total_sum\n\
\n\
def isHappy(n):\n\
    history = set()\n\
    while n != 1 and n not in history:\n\
        history.add(n)\n\
        n = total_sum_cal(n)\n\
    return n == 1\n\
\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
"]