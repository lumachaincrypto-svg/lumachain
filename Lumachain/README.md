# Lumachain (LUMA)

Lumachain (LUMA) is a community-driven ERC‑20 token on **Polygon (PoS)** focused on transparency and long‑term trust.
Team and Treasury allocations are locked with on-chain timelocks. Ownership of the token contract is renounced.

## Key facts
- Chain: Polygon PoS (chainId 137)
- Token: `Lumachain (LUMA)`  
- Token Contract: `0x453453096e669a8a48772287210098faA55bd64b`
- Total Supply: 300,000,000 LUMA
- Decimals: 18
- Circulating: 70% target (progressive market release)
- Liquidity: SushiSwap & QuickSwap (LUMA/USDC)

## Lockers (Timelocks)
- **Team (12 months)** — Contract: *(add the verified timelock address)*  
- **Treasury (6 months)** — Contract: *(add the verified timelock address)*

> Both lockers were deployed using `contracts/SimpleTokenTimelock.sol` in this repo.

## DEX Markets
- SushiSwap (Polygon) – LUMA/USDC — *pair link on DexScreener*
- QuickSwap (Polygon) – LUMA/USDC — *pair link on DexScreener*

## Repositories & License
This repo contains the reference ERC‑20 token implementation and the exact **SimpleTokenTimelock** used for Team & Treasury locks.  
Licensed under **MIT** (see `LICENSE`).

---

### Disclaimer
The reference ERC‑20 shown here is a clean, minimal implementation for transparency and compilation.  
The **deployed token contract is verified on PolygonScan** at the address above.
