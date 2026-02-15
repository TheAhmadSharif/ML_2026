#!/bin/bash

# ============================================================================
# Create ML Algorithm Folders for ML_2026
# Creates SVM, Genetic_Algorithm, and Association_Rules folder structure
# ============================================================================

set -e

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

print_info() { echo -e "${BLUE}[INFO]${NC} $1"; }
print_success() { echo -e "${GREEN}[✓]${NC} $1"; }
print_warning() { echo -e "${YELLOW}[!]${NC} $1"; }

BASE_PATH="04_Data_Science"

# Check if directory exists
if [ ! -d "$BASE_PATH" ]; then
    print_warning "$BASE_PATH directory not found."
    print_info "Make sure you're in ML_2026 root directory."
    exit 1
fi

print_info "Creating ML Algorithm folders in $BASE_PATH..."

# ============================================================================
# CREATE FOLDER STRUCTURE
# ============================================================================

# SVM
mkdir -p "$BASE_PATH/SVM/datasets"
print_success "Created SVM folder structure"

# Genetic Algorithm
mkdir -p "$BASE_PATH/Genetic_Algorithm/datasets"
print_success "Created Genetic_Algorithm folder structure"

# Association Rules
mkdir -p "$BASE_PATH/Association_Rules/datasets"
print_success "Created Association_Rules folder structure"

# ============================================================================
# CREATE README.md FILES
# ============================================================================

# SVM README
cat > "$BASE_PATH/SVM/README.md" << 'EOF'
# Support Vector Machines (SVM)

Support Vector Machines for classification and regression tasks.

## Files

- `svm_basics.ipynb` - Theory and concepts
- `svm_classifier.py` - Implementation and examples
- `datasets/` - Sample data for experiments

## Key Concepts

- Hyperplanes and margins
- Kernel methods (linear, RBF, polynomial)
- Support vectors
- Soft margins and regularization

## Getting Started

```bash
jupyter notebook svm_basics.ipynb
python3 svm_classifier.py
```

## Resources

- [Scikit-learn SVM](https://scikit-learn.org/stable/modules/svm.html)
- [Wikipedia - SVM](https://en.wikipedia.org/wiki/Support_vector_machine)
EOF

print_success "Created SVM/README.md"

# Genetic Algorithm README
cat > "$BASE_PATH/Genetic_Algorithm/README.md" << 'EOF'
# Genetic Algorithm

Evolutionary algorithms for optimization and search problems.

## Files

- `genetic_basics.ipynb` - Theory and concepts
- `genetic_optimizer.py` - Implementation and examples
- `datasets/` - Sample data for experiments

## Key Concepts

- Population and individuals
- Fitness function
- Selection, crossover, and mutation
- Evolutionary process
- Convergence

## Getting Started

```bash
jupyter notebook genetic_basics.ipynb
python3 genetic_optimizer.py
```

## Resources

- [Wikipedia - Genetic Algorithm](https://en.wikipedia.org/wiki/Genetic_algorithm)
- [DEAP Framework](https://deap.readthedocs.io/)
EOF

print_success "Created Genetic_Algorithm/README.md"

# Association Rules README
cat > "$BASE_PATH/Association_Rules/README.md" << 'EOF'
# Association Rules

Market basket analysis and association rule mining.

## Files

- `association_basics.ipynb` - Theory and concepts
- `apriori_implementation.py` - Apriori algorithm implementation
- `datasets/` - Sample transaction data

## Key Concepts

- Support, confidence, and lift
- Apriori algorithm
- Market basket analysis
- Frequent itemsets
- Rule generation

## Getting Started

```bash
jupyter notebook association_basics.ipynb
python3 apriori_implementation.py
```

## Resources

- [Wikipedia - Apriori Algorithm](https://en.wikipedia.org/wiki/Apriori_algorithm)
- [MLxtend Library](http://rasbt.github.io/mlxtend/)
EOF

print_success "Created Association_Rules/README.md"

# ============================================================================
# CREATE PYTHON FILES (PLACEHOLDER TEMPLATES)
# ============================================================================

# SVM Classifier
cat > "$BASE_PATH/SVM/svm_classifier.py" << 'EOF'
"""
Support Vector Machine Classification
Demonstrates SVM with different kernels and datasets
"""

from sklearn.svm import SVC
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import accuracy_score, classification_report

# Load data
iris = load_iris()
X, y = iris.data, iris.target

# Split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Normalize
scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform(X_test)

# Train SVM
svm = SVC(kernel='rbf', C=1.0)
svm.fit(X_train, y_train)

# Evaluate
y_pred = svm.predict(X_test)
print(f"Accuracy: {accuracy_score(y_test, y_pred):.4f}")
print(classification_report(y_test, y_pred))
EOF

print_success "Created SVM/svm_classifier.py"

# Genetic Algorithm
cat > "$BASE_PATH/Genetic_Algorithm/genetic_optimizer.py" << 'EOF'
"""
Genetic Algorithm Implementation
Demonstrates GA for function optimization
"""

import numpy as np
import random

class GeneticAlgorithm:
    """Simple Genetic Algorithm"""
    
    def __init__(self, population_size=20, generations=50, mutation_rate=0.1):
        self.population_size = population_size
        self.generations = generations
        self.mutation_rate = mutation_rate
    
    def fitness(self, individual):
        """Fitness function"""
        return -sum(x**2 for x in individual)
    
    def create_population(self, n_genes=2):
        """Create random population"""
        return [[random.uniform(-10, 10) for _ in range(n_genes)] 
                for _ in range(self.population_size)]
    
    def optimize(self, n_genes=2):
        """Run optimization"""
        population = self.create_population(n_genes)
        
        for generation in range(self.generations):
            fitness_scores = [self.fitness(ind) for ind in population]
            best_idx = np.argmax(fitness_scores)
            
            if generation % 10 == 0:
                print(f"Generation {generation}: Best Fitness = {fitness_scores[best_idx]:.4f}")
        
        print("✓ Optimization complete!")

if __name__ == "__main__":
    ga = GeneticAlgorithm(population_size=30, generations=100)
    ga.optimize(n_genes=2)
EOF

print_success "Created Genetic_Algorithm/genetic_optimizer.py"

# Association Rules
cat > "$BASE_PATH/Association_Rules/apriori_implementation.py" << 'EOF'
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
EOF

print_success "Created Association_Rules/apriori_implementation.py"

# ============================================================================
# CREATE JUPYTER NOTEBOOK PLACEHOLDERS
# ============================================================================

# Create empty .ipynb files (users can fill with notebook content)
touch "$BASE_PATH/SVM/svm_basics.ipynb"
print_success "Created SVM/svm_basics.ipynb"

touch "$BASE_PATH/Genetic_Algorithm/genetic_basics.ipynb"
print_success "Created Genetic_Algorithm/genetic_basics.ipynb"

touch "$BASE_PATH/Association_Rules/association_basics.ipynb"
print_success "Created Association_Rules/association_basics.ipynb"

# ============================================================================
# FINAL SUMMARY
# ============================================================================

echo ""
echo -e "${GREEN}=========================================${NC}"
echo -e "${GREEN}✓ ML Algorithm Folders Created!${NC}"
echo -e "${GREEN}=========================================${NC}"
echo ""
echo -e "${BLUE}Created Folders:${NC}"
echo "  ✓ 04_Data_Science/SVM/"
echo "  ✓ 04_Data_Science/Genetic_Algorithm/"
echo "  ✓ 04_Data_Science/Association_Rules/"
echo ""
echo -e "${BLUE}Each folder contains:${NC}"
echo "  ✓ README.md"
echo "  ✓ {algorithm}_*.py"
echo "  ✓ {algorithm}_basics.ipynb"
echo "  ✓ datasets/"
echo ""
echo -e "${BLUE}Next Steps:${NC}"
echo "  1. Add your code to .py files"
echo "  2. Add notebook content to .ipynb files"
echo "  3. Add sample data to datasets/ folders"
echo "  4. git add and commit"
echo ""
echo -e "${GREEN}Happy Coding! 🚀${NC}"
echo ""