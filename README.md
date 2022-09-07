<div align="center">
  <a href="https://github.com/parthoshaon/Republic-Credit-DeFi">
    <img src="https://user-images.githubusercontent.com/35532359/188829301-4b14ec33-a906-4518-94f4-738fa659deda.png" alt="Logo" width="400" height="400">
  </a>

<!--   <h1 align="center"> <strong> Republic Credit </strong> </h1> -->

  <p align="center">
    Republic Credit is producing one million coins so that investors may purchase them or even sell them as its' going to offer a buyback option that essentially lets
    you buy the coins back from the investors. It uses Ganache - Truffle for user friendly interface to interact with the smart contract and an Ethereum based wallet.
    <br />
    <a href="https://arc.aiub.edu/"><strong>Explore the website »</strong></a>
    <br />
    <a href="https://www.youtube.com/watch?v=LRO5xW3Wr8Q&feature=emb_title&ab_channel=AIUBROBOTICCREW"> <h3> View Demo </h3> </a>
  </p>
</div>

---

## Features

- 🤙 Call any contract function as long as you have the ABI
- 🔌 Connect via localhost:8545, MetaMask, or a custom node URL
- ⚡ Watches your artifacts folder and automatically updates the UI
- 🔢 Encode your calls for a proxy to call on your behalf
- ⚙️ Set a custom signer or a custom contract address
- 📜 Built-in log for easy visibility

### Installation

1.  Install Ganache 
    <p><a href="https://github.com/trufflesuite/ganache/releases">Download</a> the appropriate version for your OS:</p>
        <ul> 
          <li>Windows: <code>Ganache-*.appx</code></li>
          <li>Mac: <code>Ganache-*.dmg</code></li> 
          <li>Linux: <code>ganache-*.AppImage</code></li> 
        </ul>



2. Clone the repo
   ```sh
   git clone https://github.com/MyEtherWallet/etherwallet
   ```
3. Install NPM packages
   ```sh
   npm install
   ```
4. <code>index.html</code> is for MyEtherWallet.com.

## How it works

When `eth95` is run, an Express server is fired up and a frontend (packaged by [Parcel](https://parceljs.org/)) is served at `localhost:3000` (you can define the port with a flag `-p 1234`). The server will watch the directory you passed in for any changes to your artifacts and send those changes down to the frontend via Websockets.

Note that you can also add any contracts you want if you have the ABI or Artifact (there is an Add Contract button).

## Contact

If you have any questions or comments, please file an issue.
