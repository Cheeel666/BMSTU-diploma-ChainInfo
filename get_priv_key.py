from web3.auto import w3
import binascii


with open("/Users/ilchel/go/src/8sem/diploma/BMSTU-diploma-ChainInfo/node1/keystore/UTC--2023-05-09T01-11-13.834299000Z--8f0f41f2883966a1ffb54150c46ee1e123c4aa2c") as keyfile:
    encrypted_key = keyfile.read()
    private_key = w3.eth.account.decrypt(encrypted_key, '1992')
print(binascii.b2a_hex(private_key))