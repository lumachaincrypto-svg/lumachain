# 🌐 LumaChain (LUMA)

**LumaChain (LUMA)** is a **decentralized utility token** built on the **Polygon (PoS)** network, focused on **transparency, security, and sustainable liquidity**.  
Our mission is to build a **trustworthy and verifiable DeFi ecosystem**, with **open-source contracts, locked liquidity, and transparent tokenomics**.

---

## 🔗 Token Information

| Property | Details |
|-----------|----------|
| **Name:** | LumaChain |
| **Symbol:** | LUMA |
| **Network:** | Polygon (PoS) |
| **Token Contract:** | [`0x453453096e669a8a48772287210098faA55bd64b`](https://polygonscan.com/token/0x453453096e669a8a48772287210098faA55bd64b) |
| **Total Supply:** | 300,000,000 LUMA |
| **Decimals:** | 18 |
| **Ownership:** | Renounced (Contract verified on PolygonScan) |

---

## 📊 Liquidity & Markets

| Exchange | Pair | Address / Link |
|-----------|------|----------------|
| **SushiSwap (Polygon)** | LUMA / USDC | [`0xebad4840bf2a7eeeb64918bb71f48ab9db4400ce`](https://dexscreener.com/polygon/0xebad4840bf2a7eeeb64918bb71f48ab9db4400ce) |
| **QuickSwap (Polygon)** | LUMA / USDC | *Liquidity migrated to SushiSwap* |

All liquidity is **locked**, and token ownership is **renounced**, ensuring fairness and integrity within the ecosystem.

---

## 🔒 Token Locks (Timelocks)

| Category | Amount | Duration | Unlock Date | Contract |
|-----------|---------|-----------|--------------|-----------|
| **Team / Dev** | 60,000,000 LUMA | 12 months | April 2026 | [`0xeb92f951f5a486e8d65569e737baf5b5fd494284`](https://polygonscan.com/address/0xeb92f951f5a486e8d65569e737baf5b5fd494284) |
| **Treasury** | 30,000,000 LUMA | 6 months | April 2025 | [`0xE022379FbA9E3CE816DC973494791072b3ebE5C9`](https://polygonscan.com/address/0xE022379FbA9E3CE816DC973494791072b3ebE5C9) |

Timelocks were deployed using the `SimpleTokenTimelock.sol` contract (publicly available in this repository).

---

## 🧠 Smart Contracts

| File | Purpose |
|------|----------|
| **LumaToken.sol** | Main ERC-20 contract for token issuance. |
| **SimpleTokenTimelock.sol** | Vesting and treasury lock contract. |

All contracts are **open-source**, **verified on-chain**, and written in **Solidity** for full transparency.

---

## 📡 Supply APIs & Transparency

LumaChain maintains **public JSON endpoints** for data validation by explorers and aggregators such as CoinMarketCap, CoinGecko, and DexTools.

- **Circulating Supply:** [`https://sweet-kringle-898f12.netlify.app/supply.json`](https://sweet-kringle-898f12.netlify.app/supply.json)  
- **Total Supply:** available directly via `totalSupply()` on PolygonScan.  
- **Progressive Unlock:** circulating supply increases gradually up to 70% of total supply.

---

## 🧭 Roadmap Overview

| Phase | Price Range | Strategic Milestone |
|--------|--------------|---------------------|
| **Phase 1** | $0.000001 → $0.01 | Establish liquidity and holder base |
| **Phase 2** | $0.01 → $1 | Global expansion and early exchange listings |
| **Phase 3** | $5 → $10 | Launch of **LumaNetwork** blockchain layer |
| **Phase 4** | $10 → $25 | Development of **LumaPay** payment infrastructure |
| **Phase 5** | $25 → $50 | **RealFi** tokenization of real-world assets |
| **Phase 6** | $50 → $100 | Launch of **LUX Token** (dividend-based utility) |

---

## 📢 Official Channels

- 🌐 **Website:** [https://lumachain.com.br](https://lumachain.com.br)  
- 💬 **Telegram:** [https://t.me/LumaChain](https://t.me/LumaChain)  
- 🐦 **Twitter (X):** [https://twitter.com/LumaChain](https://twitter.com/LumaChain)  

---

## ⚙️ Current Status

- ✅ Active token with verified liquidity  
- ✅ On-chain lockers for Team & Treasury  
- 🧩 Expansion toward CEX listings and DeFi integrations  
- 🚀 Next phase: cross-platform visibility and security audits  

---

## 📜 License

Code licensed under **MIT License**.  
See the [`LICENSE`](LICENSE) file for details.

---

## ⚠️ Disclaimer

LumaChain (LUMA) is a **decentralized utility token** with no guarantee of profit or return.  
The project is focused on **security, transparency, and ethical decentralized growth**.

---