# Project Title

License Contract

## Description

This is a simple Dapp, for Registry purpose, saves username, and age, user gets to update the name and age, and see their details from the UI

    - Contrant: Contains 2 states variable storing user name and age info, with function to update the name, age and get details.
    - UI: contains button to connect the wallet, A detail section showing the user details, 2 input boxes, for user to fill in their name and updates their details


## Getting Started

### Executing program
UI: Environment set up with react
    navigate to frontend directory
    run npm install in terminal

Smart Contract: the environment is set up with Hardhat, 
                navigate to contract directory
                run npm install in terminal
                npx hardhat run .\scripts\deploy.js   
                obtain the the ABI located at contract/artifacts/contractsRegistry.json directory and the contract address printed on the terminal
                Copy the ABI to frontend/src/abi.json file
                Use the contract address in the UI implementation

## Authors

Contributors names and contact info

ex. Okeola Mubarak  
ex. [@Mubie_X](https://twitter.com/mubie_X)


## License

This project is licensed under the MIT License 

# Address
0x6248Ae88E9cB5980984CCA5746e82E82b6B6D186

