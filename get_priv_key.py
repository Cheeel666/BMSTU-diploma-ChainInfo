from web3.auto import w3
import binascii


with open("/Users/ilchel/go/src/8sem/diploma/BMSTU-diploma-ChainInfo/node1/keystore/UTC--2023-05-06T17-23-08.466448000Z--fee894ca44744ac1142edc0c95cc7377a46e2338") as keyfile:
    encrypted_key = keyfile.read()
    private_key = w3.eth.account.decrypt(encrypted_key, '')
print(binascii.b2a_hex(private_key))