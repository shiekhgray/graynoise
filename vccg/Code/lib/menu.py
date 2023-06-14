class MenuList():    
    def __init__(self, items=[], title='', parent=None):
        self.items = items
        self.selection = 0
        self.title = title
        self.parent = parent
        
    def updateParents(self):
        for item in self.items:
            if not isinstance(item,str):
                item.setParent(self)
    
    def append(self, item):
        self.items.append(item)
        
    def setItems(self, items):
        self.items = items

    def getItems(self):
        return self.items
    
    def getTitles(self):
        titles = []
        for item in self.items:
            if isinstance(item,str):
                titles.append(item)
            else:
                titles.append(item.getTitle())
        return titles

    def setSelection(self, selection):
        self.selection = selection

    def getSelection(self):
        return self.items[self.selection]
    
    def setTitle(self,title):
        self.title = title

    def getTitle(self):
        return self.title
    
    def setParent(self, parent):
        self.parent = parent
        
    def getParent(self):
        return self.parent
    
class MenuScalar():
    def __init__(self, minimum=0, maximum=100, value=0, title='', parent=None):
        self.value = value
        self.min = minimum
        self.max = maximum
        self.title = title
        self.parent = parent
    
    def setValue(self, value):
        self.value = value

    def getValue(self):
        return self.value

    def getSelection(self):
        return self.value
    
    def getMax(self):
        return self.max
    
    def getTitle(self):
        return self.title
    
    def setTitle(self, title):
        self.title = title
    
    def increment(self):
        self.value = self.value + 1
        if self.value > self.max:
            self.value = self.min
            
    def decrement(self): 
        self.value = self.value -1
        if self.value < self.min:
            self.value = self.max
    
    def setParent(self, parent):
        self.parent = parent
        
    def getParent(self):
        return self.parent
            
class MenuControl():
    def __init__(self, title='', parent=None):
        self.title = title
        self.parent = parent
        
    def getTitle(self):
        return self.title
    
    def setParent(self, parent):
        self.parent = parent
        
    def getParent(self):
        return self.parent
