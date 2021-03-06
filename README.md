[![Code Climate](https://codeclimate.com/github/spectator/linked-list.png)](https://codeclimate.com/github/spectator/linked-list)
[![Build Status](https://secure.travis-ci.org/spectator/linked-list.png?branch=master)](http://travis-ci.org/spectator/linked-list)
[![Gem Version](https://badge.fury.io/rb/linked-list.png)](http://badge.fury.io/rb/linked-list)
[![Coverage Status](https://coveralls.io/repos/spectator/linked-list/badge.png)](https://coveralls.io/r/spectator/linked-list)

# LinkedList

Ruby implementation of Doubly Linked List, following some Ruby idioms.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'linked-list'
```

And then execute:

```shell
$ bundle
```

Or install it yourself as:

```shell
$ gem install linked-list
```

## Usage

```ruby
object = Object.new # could be anything
list = LinkedList::List.new

list.push(object)
list << object # same as `push`

list.unshift(object)

list.pop
list.shift

list.insert(object, before: object)
list.insert(object, before: ->(n) { n == 'foo' })

list.insert(object, after: object)
list.insert(object, after: ->(n) { n == 'foo' })

list.insert_before(object, node)
list.insert_after(object, node)

list.reverse
list.reverse!

list.delete(object)
list.delete { |n| n == 'foo' }

list.delete_all(object)
list.delete_all { |n| n == 'foo' }

list.each  # Enumerator object
list.each { |e| puts e }

list.reverse_each # Enumerator object
list.reverse_each { |e| puts e }

list.reverse_each_node # Enumerator object
list.reverse_each_node { |node| puts node.data }

list.first # head of the list
list.last # tail of the list

list.length
list.size # same as `length`

list.to_a
```

Another way to instantiate `List` or `Node` is to use conversion functions.
First, include `LinkedList::Conversions` module to your class

```ruby
class Foo
  include LinkedList::Conversions
end
```

Now anywhere in your class you can use the following methods

```ruby
Node(object)           # will return new `Node` object
List(object)           # will return new `List` object with one `Node` object
List([object, object]) # will return new `List` object with two `Node` objects
```

Please see `LinkedList::List`, `LinkedList::Node`, and
`LinkedList::Conversions` for details.

## Tests

Run test with

```shell
$ rake
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
