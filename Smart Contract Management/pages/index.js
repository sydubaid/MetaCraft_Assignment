import { useState, useEffect } from "react";
import { ethers } from "ethers";
import atm_abi from "../artifacts/contracts/Assessment.sol/Assessment.json";

export default function HomePage() {
  const [ethWallet, setEthWallet] = useState(undefined);
  const [account, setAccount] = useState(undefined);
  const [atm, setATM] = useState(undefined);
  const [balance, setBalance] = useState(undefined);
  const [name, setName] = useState("");
  const [greeting, setGreeting] = useState("");
  const [number, setNumber] = useState("");
  const [invertedNumber, setInvertedNumber] = useState("");

  const contractAddress = "0x5FbDB2315678afecb367f032d93F642f64180aa3";
  const atmABI = atm_abi.abi;

  const getWallet = async () => {
    if (window.ethereum) {
      setEthWallet(window.ethereum);
    }
  };

  const connectAccount = async () => {
    if (!ethWallet) {
      alert("MetaMask wallet is required to connect");
      return;
    }

    try {
      const accounts = await ethWallet.request({ method: "eth_requestAccounts" });
      setAccount(accounts[0]);
      getATMContract();
    } catch (error) {
      console.error("Failed to connect account:", error);
    }
  };

  const getATMContract = () => {
    const provider = new ethers.providers.Web3Provider(ethWallet);
    const signer = provider.getSigner();
    const atmContract = new ethers.Contract(contractAddress, atmABI, signer);

    setATM(atmContract);
  };

  const getBalance = async () => {
    if (atm) {
      const contractBalance = await atm.getBalance();
      setBalance(contractBalance.toNumber());
    }
  };

  const deposit = async () => {
    if (atm) {
      try {
        const tx = await atm.deposit(1);
        await tx.wait();
        getBalance();
      } catch (error) {
        console.error("Deposit failed:", error);
      }
    }
  };

  const withdraw = async () => {
    if (atm) {
      try {
        const tx = await atm.withdraw(1);
        await tx.wait();
        getBalance();
      } catch (error) {
        console.error("Withdrawal failed:", error);
      }
    }
  };

  const handleNameChange = (event) => {
    setName(event.target.value);
  };

  const handleGreet = () => {
    setGreeting(`Hello, ${name}!`);
  };

  const handleNumberChange = (event) => {
    setNumber(event.target.value);
  };

  const handleInverse = async () => {
    if (!atm) {
      alert("Please connect your Metamask wallet");
      return;
    }

    try {
      const inverted = await atm.inverse(Number(number));
      setInvertedNumber(inverted.toString());
    } catch (error) {
      console.error("Failed to perform inverse:", error);
    }
  };

  const initUser = () => {
    if (!ethWallet) {
      return <p>Please install MetaMask to use this ATM.</p>;
    }

    if (!account) {
      return <button onClick={connectAccount}>Please connect your MetaMask wallet</button>;
    }

    if (balance === undefined) {
      getBalance();
    }

    return (
      <div>
        <p>Your Account: {account}</p>
        <p>Your Balance: {balance}</p>
        <button onClick={deposit}>Deposit 1 ETH</button>
        <button onClick={withdraw}>Withdraw 1 ETH</button>
        <input type="text" placeholder="Enter your name" value={name} onChange={handleNameChange} />
        <button onClick={handleGreet}>Greet</button>
        {greeting && <p>{greeting}</p>}
        <input type="number" placeholder="Enter a number" value={number} onChange={handleNumberChange} />
        <button onClick={handleInverse}>Inverse Number</button>
        {invertedNumber && <p>Inverted Number: {invertedNumber}</p>}
      </div>
    );
  };

  useEffect(() => {
    getWallet();
  }, []);

  return (
    <main className="container">
      <header>
        <h1>Welcome to the ATM!</h1>
      </header>
      {initUser()}
      <style jsx>{`
        .container {
          text-align: left;
          background-color: #282c34;
          min-height: 100vh;
          display: flex;
          flex-direction: column;
          align-items: center;
          justify-content: center;
          font-size: calc(8px + 2vmin);
          color: white;
        }
      `}</style>
    </main>
  );
}
