-- "Guess the Number" Game

math.randomseed(os.time()) -- Seed random number generator with current time

local function welcome_message()
    print("Welcome to 'Guess the Number' game!")
    print("I am thinking of a number between 1 and 100.")
    print("Can you guess the number?")
end

local function get_user_input()
    local input
    repeat
        print("Please enter your guess (1-100):")
        input = tonumber(io.read("*line"))
    until input and input >= 1 and input <= 100
    return input
end

local function main()
    welcome_message()
    local target_number = math.random(1, 100)
    local user_guess
    local attempts = 0

    while true do
        user_guess = get_user_input()
        attempts = attempts + 1

        if user_guess < target_number then
            print("Too low! Try again.")
        elseif user_guess > target_number then
            print("Too high! Try again.")
        else
            print("Congratulations! You guessed the number in " .. attempts .. " attempts.")
            break
        end
    end
end

main()
