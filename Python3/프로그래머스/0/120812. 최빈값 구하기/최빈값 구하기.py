def solution(array):
    arr = [0] * 1000
    for num in array:
        arr[num] += 1
        
    count_max_value = arr.count(max(arr))
    if count_max_value > 1:
        return -1
    else:
        return arr.index(max(arr))