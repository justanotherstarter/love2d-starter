-- physics2d.lua

-- Copyright (c) 2020 Pulkit Garg
-- Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
-- The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

function isAABBColliding(object1, object2)
    -- make sure that the objects being checked have x,y position values and width and height correctly setup
    if
        object1.x == nil or object2.x == nil or object1.y == nil or object2.y == nil or object1.width == nil or
            object2.width == nil or
            object1.height == nil or
            object2.height == nil
     then
        return false
    end
    if object1.x > object2.x + object2.width or object2.x > object1.x + object2.width then
        return false
    end

    if object1.y > object2.y + object2.height or object2.y > object1.y + object1.height then
        return false
    end

    return true
end
