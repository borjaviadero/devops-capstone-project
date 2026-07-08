import unittest
from models.account import Account

class TestAccount(unittest.TestCase):
    def test_create_account(self):
        account = Account("Borja", 100)
        self.assertEqual(account.name, "Borja")
        self.assertEqual(account.balance, 100)

    def test_deposit(self):
        account = Account("Borja", 100)
        account.deposit(50)
        self.assertEqual(account.balance, 150)
