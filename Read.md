# 🔐 Rotating Encrypted Container (Docker + Cosign + Alpine)

This is a secure container project that:
- Rotates and signs encrypted containers every cycle
- Uses `cosign` for Sigstore signing
- Alpine base with minimal attack surface
- Contains internal tooling to encrypt, decrypt, and verify signed builds

## 🔧 Features
- Encrypted image signing with Sigstore
- Minimal Alpine footprint (~6MB)
- Secure shell scripts: `encrypt.sh`, `decrypt.sh`, `rotate.sh`
- `cosign.key` is excluded via `.gitignore`

## 🛡️ Security Model
- Private key never shared
- All builds signed and verifiable
- Docker images follow immutability best practices
- Verification through `cosign verify`

## 🧪 Usage

```bash
# Build container
docker build -t rotating-encrypted-app .

# Sign with cosign
cosign sign --key cosign.key docker.io/your/image:tag

# Verify
cosign verify --key cosign.pub docker.io/your/image:tag

