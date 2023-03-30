["T", "e", "s", "t"] = String.graphemes("Test")

# Contrast this with codepoints which may return
# multiple codepoints for a single character
["ö"] = String.graphemes("ö")
["o", "̈"] = String.codepoints("ö")

##################################################
# List
##################################################
list = [3.14, :pie, "Apple"]

not 12

hd(list)

tl(list)

# List concatenation
[1, 2] ++ [3, 4, 1]

##################################################
# Tuple concatenation
##################################################
{1, 2} ++ {3, 4, 1}
# => {1, 2, 3, 4, 1}
# Note: ++ is not supported for keyword lists
# save to memory linearly
# Easy to caclulate the length of a tuple, but editing a tuple is expensive

File.read("path/to/file.txt")
# => {:ok, "File contents"}
# => {:error, :enoent}
# use pattern matching to handle the result
{:ok, contents} = File.read("path/to/file.txt")

##################################################
# Keyword list (like a map, but ordered)
##################################################
[foo: "bar", hello: "world"]
# => [foo: "bar", hello: "world"]

# all keys must be atoms
# keys can be duplicated
# keys are ordered

# usually used to pass options to functions

##################################################
# Map
##################################################
map = %{:foo => "bar", "hello" => :world}
# => %{foo: "bar", "hello" => :world}

# keys can be any type
# keys are not ordered

key = "hello"
# use a variable as a key
%{key => "world"}
# => %{"hello" => "world"}

%{:foo => "bar", :foo => "hello world"}
# => %{foo: "hello world"}
# keys can be duplicated, but only the last one is kept

# use a keyword list to create a map
%{foo: "bar", hello: "world"}

%{foo: "bar", hello: "world"} == %{:foo => "bar", :hello => "world"}
# => true

# access a map
map = %{foo: "bar", hello: "world"}

map.hello
# => "world"
map[:hello]
# => "world"

# update a map ( pattern matching )
%{map | foo: "baz"}
# => %{foo: "baz", hello: "world"}
# => map is unchanged
# => new map is returned
# => new map is assigned to map

map1 = %{hello: "world"}
%{map1 | foo: "baz"}
# Error: key :foo not found in: %{hello: "world"}

##################################################
# Enum
##################################################
# Enum is a module that provides a set of algorithms
# that can be used with lists, maps, ranges, and streams
# Enum is a protocol, so it can be implemented for custom data structures

# 1. Enum.__info__(:functions) to see all functions
# 2. Enum.each(fn {function, arity} -> IO.puts("#{function}/#{arity}") end) to see all functions with arity
# ( arity is the number of arguments a function takes )
Enum.__info__(:functions)
|> Enum.each(fn {function, arity} -> IO.puts("#{function}/#{arity}") end)

# check all elements in a list
# return true if all elements satisfy the condition
# return false if any element does not satisfy the condition
# return true for an empty list
Enum.all?(["foo", "bar", "hello"], fn s -> String.length(s) == 3 end)
# => false
Enum.all?(["foo", "bar", "hello"], fn s -> String.length(s) < 6 end)
# => true
Enum.all?([], fn s -> String.length(s) < 6 end)

# check any element in a list
# return true if any element satisfies the condition
# return false if no element satisfies the condition
# return false for an empty list
Enum.any?(["foo", "bar", "hello"], fn s -> String.length(s) == 3 end)
# => true
Enum.any?(["foo", "bar", "hello"], fn s -> String.length(s) == 4 end)
# => false

# --------------------------------------------------
# chunk
# --------------------------------------------------
Enum.chunk_every([1, 2, 3, 4, 5, 6], 2)
# => [[1, 2], [3, 4], [5, 6]]

# chunk by a function
Enum.chunk_by(["one", "two", "three", "four", "five"], fn s -> String.length(s) end)
# => [["one", "two"], ["three"], ["four", "five"]]

# --------------------------------------------------
# map
# --------------------------------------------------
Enum.map([1, 2, 3, 4, 5], fn x -> x * 2 end)
# => [2, 4, 6, 8, 10]

# extract a value from a list of maps
Enum.map_every([1, 2, 3, 4, 5, 6, 7, 8], 3, fn x -> x * 1000 end)

Enum.each(["one", "two", "three"], fn s -> IO.puts(s) end)
# one
# two
# three
# => :ok # return value

Enum.min([3, 1, 2])
# => 1
# return nil for an empty list

Enum.max([3, 1, 2])
# => 3
# return nil for an empty list
