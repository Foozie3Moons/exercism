def is_pangram(sentence):
    import string
    alphabet = list(string.ascii_lowercase)
    for char in alphabet:
        if char not in sentence.lower():
            return False
    return True
