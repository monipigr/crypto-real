# CryptoReal Token

## 📝 Overview

CryptoReal is an ERC-20 token with built-in features such as transfer with fees and a restricted burn mechanism for the contract owner.

---

## ✨ Features

- **Transaction with fees**: A 0.1% fee is deducted from every transfer and sent to the owner.
- **Token Burning**: Only the owner can burn tokens, with a limit of 10 tokens per transaction.
- **Initial Supply**: 1000 tokens are minted when deploying the contract.

---

## 🛠 Technical Details

- **Inherits from `ERC20`**: Implements standard token functionality.
- **Uses `Ownable`**: Assigns ownership and restricts access to certain functions.
- **Transfer override**: Modifies transfer function for enabling owner's fee

**Contract Structure:**

- `transfer(address recipient, uint256 amount)`: Transfers tokens with a 0.1% fee.
- `burn(uint256 amount)`: Allows the owner to burn a maximum of 10 tokens per transaction.

---

## ⚙️ How to Use

### 🚀 **Deploy the Smart Contract**

1. Open [Remix IDE](https://remix.ethereum.org/).
2. Create a new Solidity file and paste the contract code.
3. Compile the contract with **Solidity 0.8.24**.
4. Deploy the contract using the **Remix VM (Cancun)**.
5. Provide a custom token name and symbol in the constructor.
   **Optional** Switch to **Injected Web3** to test with Metamask on a testnet like Arbitrum.

## ✅ Interacting and Testing

### 💸 **Transfer Tokens**

1. Select the deployed contract in the **Deployed Contracts** section.
2. Call `transfer("recipient_address", amount)`.
3. Verify the transaction and check the updated balances.

### 🔥 **Burn Tokens (Owner Only)**

1. Call `burn(amount)`, ensuring the amount is **≤ 10** tokens.
2. If successful, the total supply is reduced.

---

## 📜 License

This project is licensed under **LGPL-3.0-only**.
