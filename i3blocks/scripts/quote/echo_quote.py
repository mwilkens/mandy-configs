import os, random
from subprocess import call

contents = [
        'The Communist Party' 
        ,'Classes and Class Struggle' ,'Socialism and Communism'
        ,'The Correct Handling of Contradictions among the People'
        ,'War and Peace'
        ,'Imperialism and All Reactionaries are Paper Tigers'
        ,'Dare to Struggle and Dare to Win'
        ,'Peoples War'
        ,'The Peoples Army'
        ,'Leadership and Party Committees'
        ,'The Mass Line'
        ,'Political Work'
        ,'Relations between Officers and Men'
        ,'Relations between the Army and the People'
        ,'Democracy and the Tree Main Fields'
        ,'Education and the Training of Troops'
        ,'Serving the People'
        ,'Patriotism and Internationalism'
        ,'Revolutionary Heroism'
        ,'Building Our Country through Diligence and Frugality'
        ,'Self-reliance and Arduous Struggle'
        ,'Methods of Thinking and Methods of Work'
        ,'Investigation and Study'
        ,'Correcting Mistaken Ideas'
        ,'Unity'
        ,'Discipline'
        ,'Critism and Self-Critism'
        ,'Communists'
        ,'Cadres'
        ,'Youth'
        ,'Women'
        ,'Culture and Art'
        ,'Study'
]

while True:
    filename = random.choice(os.listdir("/home/mandy/Documents/quotes/"))
    pathname = "/home/mandy/Documents/quotes/" + filename

    num = int(filename.strip('.txt').strip('mao'))

    lines = []
    with open(pathname) as f:
        for line in f:
            lines.append(line)

    quote = random.choice(lines) 
    title = 'Mao Zedong \"' + contents[num-1] + '\"'
    if len(quote)<700:
        break

print title
print len(quote)
print
print quote

call(['notify-send','-t','120000','-u','low',title,quote])
