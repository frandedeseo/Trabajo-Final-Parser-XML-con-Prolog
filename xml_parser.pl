:- use_module(library(xml)).

% Define the handler for the title element
handle_title([], Text) :-
    writeln(Text).

% Define the handler for all other elements
handle_element(_Node, []).

% Define the handler for the bookstore element
handle_bookstore(Element) :-
    % Iterate over all the book elements
    xml_child(Element, book, Book),
    handle_book(Book),
    fail.
handle_bookstore(_).

% Define the handler for a book element
handle_book(Element) :-
    % Get the title element
    xml_child(Element, title, Title),
    % Call the title handler
    handle_title(Title).

% Parse the XML file and call the bookstore handler
parse_xml_file(File) :-
    xml_parse(File, handle_bookstore).
