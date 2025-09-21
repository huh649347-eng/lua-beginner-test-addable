print("welcome to the test")
io.flush()
io.write("enter your name: ")
local Name = io.read()
print("hello ".. Name)
io.flush()
print("start test?")
io.write("y/n: ")
local startAnswer = io.read()
if startAnswer == "y" then
    print("test started")
elseif startAnswer == "n" then
    print("test aborted")
    os.exit(0)
else
    print("invalid option")
    os.exit(1)
end

if startAnswer == "y" then
    io.flush()
    print("first question")
    print("what is 2+2?")
    io.write("answer: ")
    local answer = io.read()
    if answer == "4" then
        print("correct you can continue")
        -- proceed to second question only if first is correct
        io.flush()
        print("second question")
        print("what is 3+4")
        io.write("answer: ")
        local answer2 = io.read()
        if answer2 == "7" then
            print("correct you can continue")
            -- proceed to third question only if second is correct
            io.flush()
            print("third question")
            print("what is 5*6")
            io.write("answer: ")
            local answer3 = io.read()
            if answer3 == 30 then
                print("correct you can continue")
            else
                print("you have passed the test")
                os.exit(1)
            end
            os.exit(1)
        end
    else
        print("wrong program terminated")
        os.exit(1)
    end
end
