# Octane

This is the markdown file for Octane source code to understand it better

## Homepage

The homepage is the front page that a user sees whenever he logs in. The widget tree for the Homepage is as following.

### Widget Tree

```dart
/*
      This Container contains the components for the headers
      the widget tree should look like following

                      Container
                          |
                      ListTile
                      /   |   \
          leading ~  /    |    \ ~ trailing
                    /     |     \ 
            CircleAvatar  |   TextButton
                 |        |         |
                 |      title       |
                 |        ~         |
                 |    FittedBox     |
                 |        |         |
                 |      Text        |
                 | Hello,`$Username`|
                 |                  |
                 |                  |
                 |                  |
        Icon(Icons.person)   Icon(Icons.logout)

    */
```

### Screenshot




























