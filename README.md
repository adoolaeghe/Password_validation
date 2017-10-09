# Password_validation

### Specifications

* Given a string, a method ```passcode``` should tell me if the passcode is valid or not. A passcode consists of **exactly 8 digits**.
*  Given a string, a method ```password``` should tell me if the password is valid or not. A passcode consists of **exactly 8 digits or letters**.
*  Given a string, a method ```security_type``` should tell me if tell me whether it is a **"passcode", “password” or “no match”**.

### Design

The main challenge was to find the suitable and efficient way for checking the string argument according to the given password restrictions; I decided to use the **Regular Expression** to match a patter against a string (I could have use an iteration on each character of the string). I searched to find the right Regexp metacharacter matching with the length pattern and character type selection. Finally, I found the helpful ruby matcher method ```.match(string)``` returning a ```<MatchData "string">``` object if matching otherwise  returns ```nil```.   

### Project structure approach

In order to TDD the project, I first asked myself whether I should use a seperate Rspec unit tests to isolate the tests. Then I finally decided to extract the assertions given by the instruction into seperate files. This allowed me to create an appropriate seperation of test on each method, I was then able to follow the TDD methodology for the project. All the tests are runned from a unique command in irb using a SpecHelper file. 

### Instructions 

Open your terminal and navigate to a directory to install the repo. In your terminal enter:

```
git clone git@github.com:adoolaeghe/Password_validation.git
cd Password_validation
```


To run the test, in your terminal enter:

```
ruby SpecRunner.rb
```

To use it in irb, in your terminal enter:

```
irb
Dir["./lib/*.rb"].each {|file| require file }
passcode("12345678")
=> true
password("123abc4d")
=> true
security_type("123abc4d")
=> password
```
