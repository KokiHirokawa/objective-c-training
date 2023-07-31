import Foundation

func sample(category: String, _ execute: () -> Void) {
    print("""
    ----------
    🍋 \(category)
    ----------

    """)
    execute()
    print()
}

// 01-class
do {
    sample(category: "01-class") {
        let firstClass = FirstClass()
        firstClass.doSomething()
    }
}

// 02-method
do {
    sample(category: "02-method") {
        let point = MyPoint()
        print("x: \(point.getX()), y: \(point.getY())")

        point.setPoint(100, 150)
        print("x: \(point.getX()), y: \(point.getY())")

        point.setPoint(15, y: 60)
        print("x: \(point.getX()), y: \(point.getY())")
    }
}

// 03-inherit
do {
    sample(category: "03-inherit") {
        let subClass = SubClass()
        subClass.methodB()

        callMethod(SuperClass())
        callMethod(subClass)

        // MyPoint型 には methodA が定義されていないため、呼び出そうとした場合はクラッシュする
        // callMethod(MyPoint())
    }
}

// 04-initializer
do {
    sample(category: "04-initializer") {
        _ = Animal()
        _ = Animal(name: "Wanko")
    }
}

// 05-visibility
do {
    sample(category: "05-visibility") {
        let child = Child(a: 10, b: 100, c: 1000)
        child?.print()
    }
}

// 06-class-method
do {
    sample(category: "06-class-method") {
        ClassMethod.write()
    }
}

// 07-selector
do {
    sample(category: "07-selector") {
        Selector.callClassMethod()
    }
}

// 08-category
do {
    sample(category: "08-category") {
        let category = Category()
        category.setX(11)
        category.setY(121)
        print("x: \(category.getX()), y: \(category.getY())")
    }
}

// 09-protocol
do {
    sample(category: "09-protocol") {
        let classA = ClassA()
        let classB = ClassB()

        print(classA?.toString())
        print(classB.toString())

        let runner = Runner()

        let delegate1 = ConformProtocol1()

        delegate1.foo()
        delegate1.getInt()

        // 実装されていないためクラッシュする
        // delegate1.bar()

        runner.delegate = delegate1
        runner.run()

        runner.delegate = ConformProtocol2()
        runner.run()

        runner.delegate = ConformProtocol3()
        runner.run()
    }
}

// 10-generics
do {
    sample(category: "10-generics") {
        // Generics Parameter に渡す型は NSObject を継承している必要がある
        let queue = Queue<NSString>()
        queue.enqueue("First")
        queue.enqueue("Second")
        print(queue.dequeue())
        print(queue.dequeue())
        print(queue.dequeue())

        // 実行時の強制キャストは可能だが、コンパイル時には Queue<AnyObject> と Queue<NSString> の共変性はない
        // let anyObjectQueue: Queue<AnyObject> = queue

        let anyObjectQueue = queue as! Queue<AnyObject>
        anyObjectQueue.enqueue(NSNumber(integerLiteral: 10))
        anyObjectQueue.enqueue(NSNumber(integerLiteral: 20))

        let stringQueue = anyObjectQueue as! Queue<NSString>
        print(stringQueue.dequeue())
        print(stringQueue.dequeue())
    }
}

// 11-property
do {
    sample(category: "11-property") {
        let property = Property()

        // readonly
        // property.age = 20

        property.height = 150
        property.name = "Jedi"

        print("age: \(property.age)")
        print("height: \(property.height)")
        print("money: \(property.money)")
        print("name: \(property.name)")
    }
}

// 12-attributes
do {
    sample(category: "12-attributes") {
        let baz = AttributesClassBaz()

        // Bridging-Headerで`AttributesClassFoo.h`をimportしていない場合は呼び出せない
        print(baz.someFoo)
    }
}
