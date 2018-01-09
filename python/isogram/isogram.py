def is_isogram(string):
    import re; chars = []
    for char in list(string.lower()):
        if char in chars:
            return False
        elif re.match(r'[a-z]', char):
            chars.append(char)
    return True
