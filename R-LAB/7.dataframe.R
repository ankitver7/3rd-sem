# Create the initial data frame
item_df <- data.frame(
  itemCode = c(1001, 1002, 1003, 1004, 1005),
  itemCategory = c("Electronics", "Desktop Supplies", "Office Supplies", "USB", "CD Drive"),
  itemPrice = c(700, 300, 350, 400, 800)
)

# a) Subset the data frame for items with price greater than or equal to 350
subset_price <- subset(item_df, itemPrice >= 350)
print("Items with price greater than or equal to 350:")
print(subset_price)

# b) Subset the data frame for items with category "Office Supplies" or "Desktop Supplies"
subset_category <- subset(item_df, itemCategory %in% c("Office Supplies", "Desktop Supplies"))
print("Items with category 'Office Supplies' or 'Desktop Supplies':")
print(subset_category)

# c) Create another data frame called "item-details"
item_details <- data.frame(
  itemCode = c(1001, 1002, 1003, 1004, 1005),
  ItemQtyonHand = c(10, 20, 15, 8, 12),
  ItemReorderLvl = c(5, 10, 7, 4, 6)
)

# Merge the two data frames
merged_df <- merge(item_df, item_details, by = "itemCode")
print("Merged data frame:")
print(merged_df)
