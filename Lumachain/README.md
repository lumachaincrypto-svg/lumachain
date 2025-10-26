# Lumachain (LUMA)

**LUMA** is a transparent and community-driven token built on **Polygon (PoS)**, focused on long-term credibility, decentralized growth, and liquidity integrity.  
All contracts are verified, team and treasury allocations are locked on-chain, and ownership has been renounced — ensuring fairness and transparency for the ecosystem.

---

## 🔗 Key Facts
- **Blockchain:** Polygon PoS (chainId 137)
- **Token Name:** Lumachain (LUMA)
- **Contract Address:** [0x453453096e669a8a48772287210098faA55bd64b](https://polygonscan.com/token/0x453453096e669a8a48772287210098faA55bd64b)
- **Total Supply:** 300,000,000 LUMA
- **Decimals:** 18
- **Circulating Target:** 70% (progressive and transparent release)
- **Liquidity Pools:** SushiSwap (active)  
- **Renounced Ownership:** ✅ Yes  
- **Verified Contract:** ✅ PolygonScan verified

---

## 🏦 Token Locks (Timelocks)
| Allocation | Amount | Duration | Unlock Date | Lock Contract |
|-------------|---------|-----------|---------------|----------------|
| Team & Founders | 60,000,000 LUMA | 12 months | April 2026 | [0xeb92f951f5a486e8d65569e737baf5b5fd494284](https://polygonscan.com/address/0xeb92f951f5a486e8d65569e737baf5b5fd494284) |
| Treasury | 30,000,000 LUMA | 6 months | April 2025 | [0xE022379FbA9E3CE816DC973494791072b3ebE5C9](https://polygonscan.com/address/0xE022379FbA9E3CE816DC973494791072b3ebE5C9) |

Both timelocks were deployed using the contract:
[`contracts/SimpleTokenTimelock.sol`](contracts/SimpleTokenTimelock.sol)

---

## 📊 Transparency & Supply Endpoint
To ensure data transparency for aggregators (CoinMarketCap, CoinGecko, etc.), LumaChain provides public JSON endpoints hosted via Netlify:

- **Circulating Supply API:**  
  [https://sweet-kringle-898f12.netlify.app/supply.json](https://sweet-kringle-898f12.netlify.app/supply.json)

---

## ⚙️ DEX Markets
| Platform | Pair | Explorer Link |
|-----------|------|----------------|
| SushiSwap (Polygon) | LUMA / USDC | [View on DexScreener](https://dexscreener.com/polygon/0xebad4840bf2a7eeeb64918bb71f48ab9db4400ce) |

---

## 🧭 Roadmap Overview
| Stage | Price Range | Milestone |
|-------|--------------|-----------|
| Phase 1 | $0.000001 → $0.01 | Build trust, expand liquidity, secure holders base |
| Phase 2 | $0.01 → $1 | Ecosystem strengthening, exchange listings |
| Phase 3 | $5 → $10 | Begin LumaNetwork development |
| Phase 4 | $10 → $25 | Launch LumaPay payment infrastructure |
| Phase 5 | $25 → $50 | RealFi asset tokenization (Real-World Assets) |
| Phase 6 | $50 → $100 | LUX Dividend Token (annual regulated yield) |

---

## 🧠 About the Project
LumaChain was created with a single mission — to make decentralized finance **transparent, ethical, and real**.  
Every allocation, transaction, and lock is verifiable on-chain, and every development step will prioritize **security and long-term trust**.

---

## 📂 Repository & License
This repository contains:
- The official ERC-20 implementation of LUMA.  
- The verified **SimpleTokenTimelock** contracts used for Team & Treasury locks.

**License:** MIT  
See [`LICENSE`](LICENSE) for details.

---

## ⚠️ Disclaimer
LumaChain (LUMA) is a decentralized utility token.  
It does not represent equity, shares, or investment guarantees.  
All holders interact at their own discretion within DeFi protocols.