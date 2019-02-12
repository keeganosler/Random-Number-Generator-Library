# this program generates random numbers using the linear congruence method

def linear_congruence(seed, mod, mult, inc, num):
    random_nums = []
    random_nums.append(seed)
    for i in range(0,num):
        print(i)
        q = (mult*seed) + inc
        seed = q % mod
        random_nums.append(seed)
    return random_nums

print(linear_congruence(4, 9, 5, 6, 8))