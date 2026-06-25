-- ATM Machine Simulation

local ATM = {

    balance = 0,

    loan_balance = 0

}

 

-- Function to deposit money

function ATM:deposit(amount)

    if amount > 0 then

        self.balance = self.balance + amount

        print("Deposited: $" .. amount)

        print("New Balance: $" .. self.balance)

    else

        print("Invalid deposit amount.")

    end

end

 

-- Function to withdraw money

function ATM:withdraw(amount)

    if amount > 0 then

        if amount <= self.balance then

            self.balance = self.balance - amount

            print("Withdrew: $" .. amount)

            print("New Balance: $" .. self.balance)

        else

            print("Insufficient balance.")

        end

    else

        print("Invalid withdrawal amount.")

    end

end

 

-- Function to take a loan

function ATM:loan(amount)

    if amount > 0 then

        self.loan_balance = self.loan_balance + amount

        self.balance = self.balance + amount

        print("Loan Approved: $" .. amount)

        print("New Balance: $" .. self.balance)

        print("Total Loan Balance: $" .. self.loan_balance)

    else

        print("Invalid loan amount.")

    end

end

 

-- Main Program

local atm = ATM

 

print("Welcome to the ATM!")

while true do

    print("\nChoose an option:")

    print("1. Deposit")

    print("2. Withdraw")

    print("3. Loan")

    print("4. Exit")

    io.write("Enter your choice: ")

    local choice = tonumber(io.read())

 

    if choice == 1 then

        io.write("Enter deposit amount: ")

        local amount = tonumber(io.read())

        atm:deposit(amount)

    elseif choice == 2 then

        io.write("Enter withdrawal amount: ")

        local amount = tonumber(io.read())

        atm:withdraw(amount)

    elseif choice == 3 then

        io.write("Enter loan amount: ")

        local amount = tonumber(io.read())

        atm:loan(amount)

    elseif choice == 4 then

        print("Thank you for using the ATM. Goodbye!")

        break

    else

        print("Invalid choice. Please try again.")

    end

end
