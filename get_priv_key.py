from web3.auto import w3
import binascii


with open("path") as keyfile:
    encrypted_key = keyfile.read()
    private_key = w3.eth.account.decrypt(encrypted_key, '1992')
print(binascii.b2a_hex(private_key))