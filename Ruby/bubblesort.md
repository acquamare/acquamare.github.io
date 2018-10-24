# Bubble Sort

The bubble sort.

<p><a href="https://commons.wikimedia.org/wiki/File:Bubble-sort-example-300px.gif#/media/File:Bubble-sort-example-300px.gif"><img src="https://upload.wikimedia.org/wikipedia/commons/c/c8/Bubble-sort-example-300px.gif" alt="Bubble-sort-example-300px.gif"></a><br>By <a href="//commons.wikimedia.org/w/index.php?title=User:Swfung8&amp;action=edit&amp;redlink=1" class="new" title="User:Swfung8 (page does not exist)">Swfung8</a> - <span class="int-own-work" lang="en">Own work</span>, <a href="https://creativecommons.org/licenses/by-sa/3.0" title="Creative Commons Attribution-Share Alike 3.0">CC BY-SA 3.0</a>, <a href="https://commons.wikimedia.org/w/index.php?curid=14953478">Link</a></p>

My Ruby:
```ruby
def bubble(a)
    i = a.length
    while i > 0
        j = 1
        while j < i
            k = j - 1
            if a[k] > a[j]
                x = a[k]
                y = a[j]
                a[k] = y
                a[j] = x
            end
            j += 1
        end
        i -= 1
    end
    puts a
end

bubble([6,5,3,1,8,7,2,4])
```

My work in MATLAB:

```MATLAB
function q = custom_sort(v)
    for i = length(v):-1:1
        for j = 2:i
            if v(j) < v(j-1)
                a = v(j-1);
                b = v(j);
                v(j-1) = b;
                v(j) = a;
            end
        end
    end
    q = v;
end
```