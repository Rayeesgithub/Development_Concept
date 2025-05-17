def two_sum(n, arr, target):
    for i in range(n):
        for j in range(i + 1, n):
            if arr[i] + arr[j] == target:
                return "YES"
    return "NO"

def main():
    n = 5
    arr = [2, 6, 5, 8, 11]
    target = 14
    ans = two_sum(n, arr, target)
    print("This is the answer for variant 1:", ans)

if __name__ == "__main__":
    main()
