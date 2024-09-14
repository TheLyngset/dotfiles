def test():
    test = 54
    print(test)
    for i in range(54):
        test -= 1
    return test


print(test())

def test2():
    for i in range(10):
        if i % 2:
            print(i)

test2()
