

def get_vowel_count(string, vowels = ['a', 'e' 'i', 'o', 'u'])
    count = 0
        string.downcase.each_char do |c|
            if vowels.include?(c)
                count += 1
            end
        end
    puts count
end

def remove_vowel(string, vowels = ['a', 'e' 'i', 'o', 'u'])
    new_string = ""
    string.downcase.each_char do |c|
        if not vowels.include?(c)
            new_string <<= c
        end
    end
end

def add_to_string(string, string_addition)
    string <<= string_addition
end

string3 = "Somebody once told me the world is gonna roll me
I ain't the sharpest tool in the shed
She was looking kind of dumb with her finger and her thumb
In the shape of an L on her forehead
Well, the years start comin' and they don't stop comin'
Fed to the rules and I hit the ground runnin'
Didn't make sense not to live for fun
Your brain gets smart, but your head gets dumb
So much to do, so much to see
So, what's wrong with taking the backstreets?
You'll never know if you don't go (go)
You'll never shine if you don't glow
Hey now, you're an all-star
Get your game on, go play
Hey now, you're a rock star
Get the show on, get paid
(And all that glitters is gold)
Only shootin' stars break the mold
It's a cool place, and they say it gets colder
You're bundled up now, wait 'til you get older
But the meteor men beg to differ
Judging by the hole in the satellite picture
The ice we skate is gettin' pretty thin
The water's gettin' warm, so you might as well swim
My world's on fire, how 'bout yours?
That's the way I like it, and I'll never get bored
Hey now, you're an all-star
Get your game on, go play
Hey now, you're a rock star
Get the show on, get paid
(All that glitters is gold)
Only shootin' stars break the mold
Go for the moon
(Go, go, go) go for the moon
(Go, go, go) go for the moon
Go (go), go for the moon
Hey now, you're an all-star
Get your game on, go play
Hey now, you're a rock star
Get the show on, get paid
(And all that glitters is gold)
Only shooting stars
Somebody once asked, Could I spare some change for gas?
I need to get myself away from this place
I said, Yep, what a concept, I could use a little fuel myself
And we could all use a little change
Well, the years start comin' and they don't stop comin'
Fed to the rules and I hit the ground runnin'
Didn't make sense not to live for fun
Your brain gets smart, but your head gets dumb
So much to do, so much to see
So, what's wrong with taking the backstreets?
You'll never know if you don't go (go!)
You'll never shine if you don't glow
Hey now, you're an all-star
Get your game on, go play
Hey now, you're a rock star
Get the show on, get paid
(And all that glitters is gold)
Only shootin' stars break the mold
Only shootin' stars break the mold
Go for the moon
Go for the moon
Go for the moon
This is how we do it" # the third string

puts (get_vowel_count(string3))