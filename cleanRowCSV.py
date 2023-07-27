import pandas as pd

def drop_multiple_rows(input_file, output_file, start_row, drop_interval):
    # Read the CSV file into a DataFrame
    df = pd.read_csv(input_file)

    # Create a list of row indices to drop
    rows_to_drop = list(range(start_row-1, len(df), drop_interval))

    # Drop the specified rows
    df = df.drop(rows_to_drop)

    # Reset the DataFrame index
    df.reset_index(drop=True, inplace=True)

    # Save the cleaned data to a new CSV file
    df.to_csv(output_file, index=False)

# Example usage
if __name__ == "__main__":
    path = "result_training/clean/efficientnet-b0/"
    input_file = path + "result_temp.csv"
    output_file = path + "result_temp_cleaned.csv"
    start_row = 83
    drop_interval = 83 # Replace with the interval at which you want to drop rows

    drop_multiple_rows(input_file, output_file, start_row, drop_interval)

    print("Cleaning Row Data Completed !")