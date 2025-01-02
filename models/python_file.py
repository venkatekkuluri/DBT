import pandas as pd

def model(dbt, session):
    # Create a DataFrame similar to the SQL source_data CTE
    source_data = pd.DataFrame({
        'id': [1, None]  # Equivalent to the SQL UNION ALL
    })

    # Return the DataFrame to dbt
    return source_data
