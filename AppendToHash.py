import hashlib

original_hash = "3dac93b8cd250aa8c1a36fffc79a17a"
wordlist_file = "path/to/alphanum-case.txt"
new_hashes = []

with open(wordlist_file, "r") as f:
    wordlist = f.readlines()

for word in wordlist:
    word = word.strip()
    appended_string = original_hash + word
    new_hash = hashlib.md5(appended_string.encode()).hexdigest()
    new_hashes.append(new_hash)
