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
