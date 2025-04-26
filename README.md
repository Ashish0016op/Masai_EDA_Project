# Masai_EDA_Project
##PART1
#EXPLANATION:
1. Libraries:
-requests: Fetches the website's HTML content.
-BeautifulSoup: Parses the HTML, making it easy to navigate and extract specific data.
-csv:  Writes the scraped data into a CSV file.
2. Script Structure:
-It uses a try...except block to handle potential errors during the scraping process.
-An empty list data stores the extracted information (author, quote, tags) as dictionaries.
-A while loop iterates through the website's pages.
3. Scraping Process:
-The while loop starts from page 1 and continues until all pages are processed.
-For each page, it constructs the URL.
-requests.get() fetches the page's HTML content.If the request is successful (status code 200), BeautifulSoup parses the HTML.
-The script uses BeautifulSoup's methods to find all quote elements on the page.
-For each quote, it extracts the author, quote text, and tags.
-The extracted data is stored as a dictionary and added to the data list.
4. Handling Multiple Pages:
-The script is designed to scrape all pages, not just the first one.
-The while loop continues as long as there's a "next" page.  Inside the loop, the script would typically find the URL of the next page and use it to continue scraping.  The provided code limits it to the first 10 pages.
-This ensures that all available quotes are collected.
6. Saving to CSV:
-After scraping all the data, the script opens a CSV file ("quotes.csv") in write mode.
-It defines the column headers: "author," "quote," and "tag_name."
-It creates a csv.DictWriter to write dictionaries as rows in the CSV file.
-The script writes the header row and then iterates through the data list, writing each quote's dictionary as a row.
-In short, the script automates the process of extracting quote data from multiple pages of a website and saving it in a structured CSV file.
