import hashlib

# Укажите ваше ФИО.
name = 'Lev Rymanov'

reviewers = [
    'lodthe',
    'darkkeks',
    'danlark1'
]
print(reviewers[int(hashlib.md5(name.encode('utf-8')).hexdigest(), 16) % 
len(reviewers)])
