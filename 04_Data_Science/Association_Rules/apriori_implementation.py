"""
Association Rules Mining - Apriori Algorithm
Market Basket Analysis
"""

from collections import defaultdict
from itertools import combinations

class Apriori:
    """Simple Apriori Algorithm"""
    
    def __init__(self, min_support=0.3):
        self.min_support = min_support
        self.frequent_itemsets = {}
    
    def get_support(self, itemset, transactions):
        """Calculate support of itemset"""
        count = sum(1 for trans in transactions if itemset.issubset(trans))
        return count / len(transactions)
    
    def apriori(self, transactions):
        """Run Apriori"""
        transactions = [set(trans) for trans in transactions]
        
        # Find frequent 1-itemsets
        item_support = defaultdict(int)
        for trans in transactions:
            for item in trans:
                item_support[item] += 1
        
        frequent_1 = {frozenset([item]) for item, count in item_support.items() 
                     if count / len(transactions) >= self.min_support}
        
        self.frequent_itemsets[1] = frequent_1
        
        print("✓ Apriori analysis complete!")
        return self.frequent_itemsets

if __name__ == "__main__":
    transactions = [
        ['Milk', 'Bread'],
        ['Milk', 'Butter'],
        ['Bread', 'Butter'],
        ['Milk', 'Bread', 'Butter']
    ]
    
    apriori = Apriori(min_support=0.25)
    apriori.apriori(transactions)
