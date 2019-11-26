import random, math
import matplotlib.pyplot as plot

def two_random_numbers():
    r = math.sqrt(-2 * math.log(random.random()))
    theta = 2 * math.pi * random.random()
    x = r * math.cos(theta)
    y = r * math.sin(theta)
    return x, y

if __name__ == "__main__":

    random_numbers = []
    for x in range(0, int(300/2)):
        random_numbers += two_random_numbers()

    random_numbers = [x * (((325/2)/2)/3) for x in random_numbers]

    lowest = min(*random_numbers)
    highest = max(*random_numbers)

    inc = abs(lowest)

    random_numbers = [int(x + inc) for x in random_numbers]

    print(random_numbers, lowest, highest)

    n, bins, patches = plot.hist(random_numbers, 50)
    plot.show()

    n = [x+48 for x in n]
    n = [x if x <= 63 else 63.0 for x in n]
    print(n)
    print(max(*n))
    print(bins)

    # take x values from the frequency counts, and get the x/2nd value from the time values 
    last_time = 0
    x = 12
    note_stream = []

    for idx in range(0, len(bins), int(x/2)):
        first = x+idx
        frequencies = [64 - a for a in n[first-x:first]]

        notes = []

        if len(bins) > idx+(x/2):
            next_time = 2*math.ceil(bins[idx + int(x/2)])
            duration = next_time - last_time
            print(duration, duration/8)

            random.shuffle(frequencies)
            while frequencies and duration > 0:
                t = frequencies.pop()
                notes.append(t)
                duration -= t

            note_choices = random.choices(
                    population=["G","A","B","C", None],
                    weights=[1, 1.5, 1.5, 1, 1],
                    k=len(notes)
            )
            notes = list(zip(notes, note_choices))
            note_stream += notes

            print(notes, frequencies)
            last_time = next_time

    import pprint
    pprint.pprint(note_stream)
