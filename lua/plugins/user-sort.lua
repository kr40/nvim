return {
  -- luacheck: ignore
  -- Sorting plugin for Neovim
  --[[ 
- Use [!] to reverse the sort order.
- Use [delimiter] to manually set the delimiter instead of iterating over config.delimiters and sorting by the highest priority delimiter. Valid delimiters include:
- Any punctuation character (!, ?, &, ...), matching the %p lua pattern character class.
 - s: Space
 - t: Tab
- Use [b] to sort based on the first binary number in the word.
- Use [i] to ignore the case when sorting.
- Use [n] to sort based on the first decimal number in the word.
- Use [o] to sort based on the first octal number in the word.
- Use [u] to only keep the first instance of words within the selection. Leading and trailing whitespace are not considered when testing for uniqueness.
- Use [x] to sort based on the first hexadecimal number in the word. A leading 0x or 0X is ignored ]]
  {
    "sQVe/sort.nvim",
    cmd = "Sort",
  },
}
