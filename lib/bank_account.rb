class BankAccount
    # BankAccount #initialize can initialize a Bank Account
    # BankAccount #initialize initializes with a name
    # BankAccount #initialize always initializes with balance of 1000
    # BankAccount #initialize always initializes with a status of 'open'
    # BankAccount #initialize can't change its name
    attr_accessor :balance, :status
    attr_reader :name
    attr_writer 

    @@all =[]

    def initialize(name)
        @name = name
        @balance = 1000
        @status='open'
        save
    end

    def save
        @@all << self
    end
    # BankAccount #deposit can deposit money into its account
    def deposit(volume_of_funds)
        @balance = balance + volume_of_funds        
    end
        
    # BankAccount #display_balance can display its balance
    def display_balance
        return "Your balance is $#{@balance}."
    end
    # BankAccount #valid? is valid with an open status and a balance greater than 0
    def valid?
        return (self.status == "open" && self.balance > 0)? true : false
    end
    
    # BankAccount #close_account can close its account
    def close_account
        @status = "closed"
    end

end
