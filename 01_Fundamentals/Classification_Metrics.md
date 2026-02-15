# Classification Metrics Example

**Task**: Spam vs Not Spam Email Classifier  
**Test Dataset Size**: 20 emails

## True Labels vs Model Predictions

| Email | True Label | Predicted |
|-------|------------|-----------|
| 1     | Spam       | Spam      |
| 2     | Spam       | Spam      |
| 3     | Spam       | Not Spam  |
| 4     | Spam       | Spam      |
| 5     | Spam       | Not Spam  |
| 6     | Not Spam   | Not Spam  |
| 7     | Not Spam   | Not Spam  |
| 8     | Not Spam   | Spam      |
| 9     | Not Spam   | Not Spam  |
| 10    | Not Spam   | Not Spam  |
| 11    | Spam       | Spam      |
| 12    | Spam       | Spam      |
| 13    | Not Spam   | Not Spam  |
| 14    | Not Spam   | Not Spam  |
| 15    | Spam       | Not Spam  |
| 16    | Not Spam   | Spam      |
| 17    | Spam       | Spam      |
| 18    | Not Spam   | Not Spam  |
| 19    | Not Spam   | Not Spam  |
| 20    | Spam       | Spam      |

## Confusion Matrix

|                  | Predicted Spam | Predicted Not Spam |
|------------------|----------------|--------------------|
| **Actual Spam**      | TP = 8         | FN = 3             |
| **Actual Not Spam**  | FP = 2         | TN = 7             |

## Calculated Metrics

| Metric        | Formula                          | Calculation          | Result      |
|---------------|----------------------------------|----------------------|-------------|
| **Accuracy**  | (TP + TN) / Total                | (8 + 7) / 20         | **75.0%**   |
| **Precision** | TP / (TP + FP)                   | 8 / (8 + 2)          | **80.0%**   |
| **Recall**    | TP / (TP + FN)                   | 8 / (8 + 3)          | **72.7%**   |
| **F1-Score**  | 2 × (Precision × Recall) / (Precision + Recall) | 2 × (0.8 × 0.727) / (0.8 + 0.727) | **76.2%**   |

## Quick Interpretation

- **Accuracy 75%** → Model is correct on 3 out of 4 emails overall  
- **Precision 80%** → When it flags an email as spam, it's correct 80% of the time  
- **Recall 72.7%** → It successfully detects ~73% of all actual spam emails  
- **F1-Score 76.2%** → Balanced summary of precision and recall

---