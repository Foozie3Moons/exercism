def reverse(input=''):
    reversed = []
    for char in list(input):
        reversed.insert(0, char)
    return ''.join(reversed)
