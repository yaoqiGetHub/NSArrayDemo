//
//  ViewController.m
//  NSArrayDemo
//
//  Created by yaoqi on 17/4/6.
//  Copyright © 2017年 yaoqi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
// 一、   NSArray 数组的创建
//    1、使用类方法创建 一个空的数组
//    + (id)array;
//    
//    
//    2、使用类方法创建 只有一个对象的数组
//    + (id)arrayWithObject:(id)anObject;
//    
//    
//    3、从 c 数组创建一个 NSarray  数以cnt 不能超出数组的范围。不然会有数据越界的异常
//    + (id)arrayWithObjects:(const id [])objects count:(NSUInteger)cnt;
//    
//    
//    id objects[10] = {@"abbb",@"bczdfasdf",@"casdfasdf",@"asdfasdf"};
//    
//    NSArray *array = [NSArray arrayWithObjects:objects count:2];
//    
//    NSLog(@"%@",array);
//    
//    
//    4、  使用后面的元素，创建一个数组
//    + (id)arrayWithObjects:(id)firstObj, ... NS_REQUIRES_NIL_TERMINATION;
//    
//    
//    5、array 创建一个新的数组
//    + (id)arrayWithArray:(NSArray *)array;
//    
//    
//    6、使用 c 数组 创建一个数组。
//    - (id)initWithObjects:(const id [])objects count:(NSUInteger)cnt;
//    
//    
//    7、使用objects 创建数组
//    - (id)initWithObjects:(id)firstObj, ... NS_REQUIRES_NIL_TERMINATION;
//    
//    
//    8、使用一个array 创建一个数组
//    - (id)initWithArray:(NSArray *)array;
//    
//    
//    9、使用array 创建一个数组，后面的标识是 是否拷贝原来的元素
//    flag 如果是YES, 数组中每个元素，将引用copywithzone。
//    - (id)initWithArray:(NSArray *)array copyItems:(BOOL)flag;
//    
//    
//    10、读取文件创建一个数组，
//    + (id)arrayWithContentsOfFile:(NSString *)path;
//    
//    
//    11、使用URL 穿件一个数组，这个URL可以是本地的文件路径，也可是是网络上的内容
//    + (id)arrayWithContentsOfURL:(NSURL *)url;
//    
//    
//    12、读取文件创建一个数组，
//    - (id)initWithContentsOfFile:(NSString *)path;
//    
//    
//    13、使用URL 穿件一个数组，这个URL可以是本地的文件路径，也可是是网络上的内容
//    - (id)initWithContentsOfURL:(NSURL *)url;
//////////////////////////////////////////////////////////////////////////////////
//
//  二、
//    1、 向数组中添加一个对象
//    - (void)addObject:(id)anObject;
//    
//    
//    2、向数组中指定的index 位置，插入一个新的对象
//    - (void)insertObject:(id)anObject atIndex:(NSUInteger)index;
//    
//    
//    3、移除数组的最后一个元素
//    - (void)removeLastObject;
//    
//    
//    4、移除指定为指定位置的元素
//    - (void)removeObjectAtIndex:(NSUInteger)index;
//    
//    
//    5、使用anObject 替换 下标为 index 位置上的元素
//    - (void)replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject;
//    
//    
//    6、使用一个数组给当前的数组添加元素
//    - (void)addObjectsFromArray:(NSArray *)otherArray;
//    
//    
//    7、交换指定 index1 和 index2 两个位置上的元素
//    - (void)exchangeObjectAtIndex:(NSUInteger)idx1 withObjectAtIndex:(NSUInteger)idx2;
//    
//    
//    8、 移除数组中的所有元素
//    - (void)removeAllObjects;
//    
//    
//    9、使用anObject 对象替换 range 位置上的元素，
//    相当于删除 range位置的元素，然后在把 anobject 插入到这个位置
//    - (void)removeObject:(id)anObject inRange:(NSRange)range;
//    
//    
//    10、如果指定的元素，如果元素不存在，则不移除
//    - (void)removeObject:(id)anObject;
//    
//    
//    11、 同9 相同
//    - (void)removeObjectIdenticalTo:(id)anObject inRange:(NSRange)range;
//    
//    
//    12、方法内容 和9 相同
//    - (void)removeObjectIdenticalTo:(id)anObject;
//    
//    
//    13、不建议使用
//    - (void)removeObjectsFromIndices:(NSUInteger *)indices numIndices:(NSUInteger)cnt NS_DEPRECATED(10_0, 10_6, 2_0, 4_0);
//    
//    
//    14、移除给定数组中的元素
//    - (void)removeObjectsInArray:(NSArray *)otherArray;
//    
//    
//    15、移除指定range  上的所有元素
//    - (void)removeObjectsInRange:(NSRange)range;
//    
//    
//    16、使用otherArray 数组中 otherRange 位置上的元素，替换当前数组中 range 位置上的元素
//    - (void)replaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *)otherArray range:(NSRange)otherRange;
//    
//    
//    17 、 使用otherArray 数组上的位置，替换 range 上的元素
//    - (void)replaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *)otherArray;
//    
//    
//    18、对当前的数组排序，使用排序算法
//    - (void)sortUsingFunction:(NSInteger (*)(id, id, void *))compare context:(void *)context;
//    
//    
//    19、对当前的数组排序，使用排序算法
//    - (void)sortUsingSelector:(SEL)comparator;
//    
//    
//    20、在indexes 的位置上，插入一个数组
//    - (void)insertObjects:(NSArray *)objects atIndexes:(NSIndexSet *)indexes;
//    
//    
//    21、移除制定indexes 位置上的元素
//    - (void)removeObjectsAtIndexes:(NSIndexSet *)indexes;
//    
//    
//    22、使用一个对象数组，替换 indexes 位置上的 元素
//    - (void)replaceObjectsAtIndexes:(NSIndexSet *)indexes withObjects:(NSArray *)objects;
//    
//    
//    23
//    - (void)setObject:(id)obj atIndexedSubscript:(NSUInteger)idx NS_AVAILABLE(10_8, 6_0);
//    
//    
//    24、排序
//    - (void)sortUsingComparator:(NSComparator)cmptr
//    25、 使用后面的元素进行排序
//    - (void)sortWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr
//    
//    
//    25、 创建NSMutableArray 数组
//    + (id)arrayWithCapacity:(NSUInteger)numItems;
//    - (id)initWithCapacity:(NSUInteger)numItems;
    
//   三、
    NSArray *array = [NSArray arrayWithObjects:@"wendy",@"andy",@"tom",@"jonery",@"stany", nil];
    NSLog(@"%ld",[array count]);
//3.在当前数据中追加一个新的对象，并且返回一个新的数据对象(新的数组对象和被追加的对象，是两个不同的数组对象)。
//- (NSArray<ObjectType> *)arrayByAddingObject:(ObjectType)anObject;
    NSArray *newArr = [array arrayByAddingObject:@"sss"];
    NSLog(@"array = %ld",[array count]);
    NSLog(@"newArr = %ld",[newArr count]);
    
//4、在当前的数组中追加一个新的数据，并且返回一个新的数组对象。
//- (NSArray *)arrayByAddingObjectsFromArray:(NSArray *)otherArray;
    
//5、使用当前的数组生成一个字符串，新生成的字符串使用提供的separator 字符进行分割。
//- (NSString *)componentsJoinedByString:(NSString *)separator;
    NSLog(@"newArr = %@",newArr);
    NSString *arrStr = [newArr componentsJoinedByString:@".."];
    NSLog(@"arrStr = %@",arrStr);
    
//6、检测数据中是否包含指定的对象元素
//- (BOOL)containsObject:(id)anObject;
    if ([array containsObject:@"tom"] == YES) {
        NSLog(@"包含");
    }else {
        NSLog(@"不包含");
    }
//7、使用当前的数组生成字符串。可以重写description 改变生成的字符串。相当于Java 中的toString 方法。
//    - (NSString *)description;
    [array description];
//8、根据设置的locale 进行连接数组
    //    - (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level;
    //    - (NSString *)descriptionWithLocale:(nullable id)locale;

    //没搞明白怎么回事
    NSString *Localestring = [array descriptionWithLocale:@"--"];
    NSLog(@"Localestring = %@",Localestring);
//9、两个数组的第一个元素是否相同，如果相同，则返回 数组中，第一个元素的字符串，反之，返回null 对象
    NSString *objc = [array firstObjectCommonWithArray:newArr];
    NSLog(@"objc = %@",objc);
    
//10.从数组中获取 NSRange 对象的数据存放到objects 中，NSRange 的数据标示从location,开始后面length 个数据(也就是取数组里面的元素)
// - (void)getObjects:(id__unsafe_unretained [])objects range:(NSRange)range;
    
//11、 判断制定的anObject 对象是否存在数组中如果存在返回，对象所在的下标
//- (NSUInteger)indexOfObject:(id)anObject;
//- (NSUInteger)indexOfObject:(id)anObject inRange:(NSRange)range;
//    如果不存在，返回的NSUInteger 与 NSNotFund 相同
    NSUInteger index = [array indexOfObject:@"stan"];
    if(index == NSNotFound)
    {
        NSLog(@"对象不在数组中");
    }
    
//12、同上面两个方法一项，测试指定的对象是否在数组中不同的是，这里使用指针进行比较
//- (NSUInteger)indexOfObjectIdenticalTo:(id)anObject;
//如果数据存在，返回指定的下标，如果不存在，则返回NSNotFund 。
//- (NSUInteger)indexOfObjectIdenticalTo:(id)anObject inRange:(NSRange)range;
    
//13、比较两个数组是否相同 ，数组长度相同，并且相同位置上的元素也相同。
//- (BOOL)isEqualToArray:(NSArray *)otherArray;
    
//14、返回最有一个元素，如果一个数组的长度为0 返回的对象为nil
//- (id)lastObject;
    
//15、使用数组返回一个 NSEnumerator 对象，这个对象类似与一个指针，可以用来遍历 整个数组 指针从前向后遍历
//- (NSEnumerator *)objectEnumerator;    
    NSEnumerator *enu = [array objectEnumerator];
    id obj;
    while ((obj = enu.nextObject)) {
        NSLog(@"obj===%@==",obj);
    }
//16、 返回一个NSEnumerator 对象，这个对象类似一个指针，可以用来遍历真个数据，所不同的是，这个指针，是从后向前遍历
//    - (NSEnumerator *)reverseObjectEnumerator;
    NSEnumerator *enu1 = [array reverseObjectEnumerator];
    id obj1;
    while ((obj1 = enu1.nextObject)) {
        NSLog(@"obj1===%@==",obj1);
    }

//17、生成一个NSData 的对象，主要是用来进行数组的排序。 在下面的方法中使用这个对象
//- (NSData *)sortedArrayHint;
    
//18、 进行数组的排序
//- (NSArray *)sortedArrayUsingFunction:(NSInteger (*)(id,id, void *))comparator context:(void *)context;
//这个方法类似苹果实现了一个简单的 排序方法。但是实现的规则需要自己进行处理。
//类似的方法如下。 首先提供一个 普通的排序算法，函数和c 的方法类似
    NSArray *array1 = [NSArray arrayWithObjects:@"wendy",@"andy",@"tom",@"test", nil];
    NSArray *a = [array1 sortedArrayUsingFunction:sortType context:nil];
    NSLog(@"a=%@",a);
//NSArray 为需要排序的数组，返回一个排序完成的数组，再执行osrtedArrayUseingFunction 方法时会，会自动调用上面的sortType 方法，并且，可以按照你的需要调整上面的规则。
    
//19、和上面的方法类似，也是苹果用来进行排序的。所不同的是，需要传入一个NSData 的数据。
//- (NSArray *)sortedArrayUsingFunction:(NSInteger (*)(id,id, void *))comparator context:(void *)context hint:(NSData *)hint;
    NSData *data = [array1 sortedArrayHint];
    NSArray *b = [array1 sortedArrayUsingFunction:sortType context:nil hint:data];
    NSLog(@"b=%@",b);
    
//20、- (NSArray *)sortedArrayUsingSelector:(SEL)comparator;
//这是用来排序的函数，comparator 这个参数，需要传入一个返回结果是NSComparisonResult 的函数，主要的函数，类似的函数如下：
//- (NSComparisonResult)compare:(NSString *)string;
//- (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask;
//- (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask range:(NSRange)compareRange;
//- (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask range:(NSRange)compareRange locale:(id)locale;
//- (NSComparisonResult)caseInsensitiveCompare:(NSString *)string;
//- (NSComparisonResult)localizedCompare:(NSString *)string;
//- (NSComparisonResult)localizedCaseInsensitiveCompare:(NSString *)string;
//都可以进行调用
//以 localizedCompare: 函数为例进行调用
    NSArray *arr = [[NSArray alloc] initWithObjects:@"test", @"abc", @"xyz", nil];
    NSLog(@"Befor sort:%@", arr);
    SEL sel = @selector(localizedCompare:);
    arr = [arr sortedArrayUsingSelector:sel];
    NSLog(@"After sort:%@", arr);
    
//21、用来获取数组中range.location 开始，数据各数 为range.length 的数据，并放置到一个新的数组中以数组 为例
    NSArray *arrays = [NSArray arrayWithObjects:@"wendy",@"andy",@"tom",@"test", nil];
//- (NSArray *)subarrayWithRange:(NSRange)range;
//如：
    NSArray *testarr = [arrays subarrayWithRange:NSMakeRange(2, 2)];// 注意range 的数值不要越界。
    NSLog(@"testarr = %@",testarr);
    
/////////太长了不想写了///////////////////////////////////////////////
//    20、   - (NSArray *)sortedArrayUsingSelector:(SEL)comparator;
//    这是用来排序的函数，comparator 这个参数，需要传入一个返回结果是NSComparisonResult 的函数，
//    主要的函数，类似的函数如下：
//    - (NSComparisonResult)compare:(NSString *)string;
//    - (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask;
//    - (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask range:(NSRange)compareRange;
//    - (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask range:(NSRange)compareRange locale:(id)locale;
//    - (NSComparisonResult)caseInsensitiveCompare:(NSString *)string;
//    - (NSComparisonResult)localizedCompare:(NSString *)string;
//    - (NSComparisonResult)localizedCaseInsensitiveCompare:(NSString *)string;
//    都可以进行调用
//    以 localizedCompare: 函数为例进行调用
//    
//    
//    NSArray *arr = [[NSArray alloc] initWithObjects:@"test", @"abc", @"xyz", nil];
//    NSLog(@"Befor sort:%@", arr);
//    SEL sel = @selector(localizedCompare:);
//    arr = [arr sortedArrayUsingSelector:sel];
//    NSLog(@"After sort:%@", arr);
//    得到的结果是:
//    abc,
//    test,
//    xyz
//    
//    
//    21、用来获取数组中range.location 开始，数据各数 为range.length 的数据，并放置到一个新的数组中
//    以数组 为例
//    NSArray *array = [NSArray arrayWithObjects:@"wendy",@"andy",@"tom",@"test", nil];
//    - (NSArray *)subarrayWithRange:(NSRange)range;
//    如：
//    NSArray *test = [array subarrayWithRange:NSMakeRange(2, 2)];
//    tom,
//    test
//    注意range 的数值不要越界。
//    22、写入数组中的数据，到指定path 的目录中：
//    参数:atomically 是否把文件保存到辅助文件中
//    - (BOOL)writeToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile;
//    
//    
//    
//    
//    23、如同上面的方法一样，所不同的是写入数组中的内容到 网上指定的路径。
//    - (BOOL)writeToURL:(NSURL *)url atomically:(BOOL)atomically;
//    
//    
//    
//    
//    24、这个方法的实现类似于，数组中的元素，都是类对象，aselector 是这些类中的无参方法。
//    - (void)makeObjectsPerformSelector:(SEL)aSelector;
//    调用例子如下：
//    首先新建一个ObjectTest 的类，在其中实现一个 无参数方法 - (void)tttttt
//    在这个方法的实现中可以打印一些日志
//    - (void)tttttt
//    {
//        NSLog(@"==========asasdfasdfasdfas===========");
//    }
//    
//    
//    
//    
//    NSArray *array = [NSArray arrayWithObjects:[[[ObjectTest alloc] init] autorelease],[[[ObjectTest alloc] init] autorelease], nil];
//    
//    调用格式如下，
//    [array makeObjectsPerformSelector:@selector(tttttt)];
//    
//    这时就可以看到打印的日志信息了。
//    25、这个方法的调用和上面一个方法类似，所不同的是这个对象调用的方法是一个可以带参数的方法。参数的类型是id ,也就是可以是任意的类型。
//    - (void)makeObjectsPerformSelector:(SEL)aSelector withObject:(id)argument;
//    
//    
//    26、  用来根据indexes 获取一个数组， NSIndexSet 是一个用来管理 index 的对象。
//    - (NSArray *)objectsAtIndexes:(NSIndexSet *)indexes;
//    
//    
//    例子如下：
//    NSArray *array = [NSArray arrayWithObjects:@"wendy",@"andy",@"tom",@"test", nil];
//    
//    //NSIndexSet *se = [NSIndexSet indexSetWithIndex:0];
//    或者是
//    NSIndexSet *se = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2, 2)];
//    
//    NSArray *test = [array objectsAtIndexes:se];
//    NSLog(@"%@",test);
//    
//    
//    27、返回指定下标的一个对象。这个方法类似 objectAtIndex:
//    - (id)objectAtIndexedSubscript:(NSUInteger)idx
//    
//    
//    28、使用block 块遍历整个数组。这个block 需要三个参数，id obj 表示数组中的元素。
//    NSUInteger idx 标示元素的下标，
//    bool *stop 是一个bool类型的参数。 官方描述如下：
//    A reference to a Boolean value. The block can set the value to YES to stop further processing of the array.
//    The stop argument is an out-only argument. You should only ever set this Boolean to YES within the Block.
//    - (void)enumerateObjectsUsingBlock:(void (^)(id obj, NSUInteger idx,BOOL *stop))block
//    调用例子如：
//    
//    
//    NSArray *array = [NSArray arrayWithObjects:@"wendy",@"andy",@"tom",@"test", nil];
//    
//    
//    [array enumerateObjectsUsingBlock:^(id str,NSUInteger index, BOOL* te){
//        NSLog(@"%@,%d",str,index);
//    }];
//    29、同上面的方法一项，区别在于，这里多添加了一个参数，用来标示 是从前向后遍历，还是从后往前遍历。
//    - (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void (^)(id obj, NSUInteger idx,BOOL *stop))block
//    调用例子如下：
//    NSArray *array = [NSArray arrayWithObjects:@"wendy",@"andy",@"tom",@"test", nil];
//    
//    
//    [array enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id str,NSUInteger index, BOOL* te){
//        NSLog(@"%@,%d",str,index);
//    }];
//    30、    同上面的方法一项，不过NSIndexSet 参数标示，根据下标取出的数组，这里真正在block 中遍历的数组，是根据NSindexSet 取到的子数组
//    - (void)enumerateObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts usingBlock:(void (^)(id obj, NSUInteger idx,BOOL *stop))block
//    调用如下：
//    [array enumerateObjectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(1, 3)] options:NSEnumerationReverse usingBlock:^(id str,NSUInteger index, BOOL* te){
//        NSLog(@"%@,%d",str,index);
//    }];
//    31、 根据条件用来获取一个NSUIndex 对象，主要是根据条件进行数据遍历使用
//    - (NSUInteger)indexOfObjectPassingTest:(BOOL (^)(id obj, NSUInteger idx,BOOL *stop))predicate
//    
//    调用如下：
//    NSInteger index = [array indexOfObjectPassingTest:^ BOOL (id tr,NSUInteger index, BOOL *te){
//        NSString *s = (NSString *)tr;
//        if([@"wendy" isEqualToString:s])
//        {
//            return YES;
//        }
//        return NO;
//    }];
//    
//    NSLog(@"index==%d=.",index);
//    32、同上面的方法相同，却别在于，这里添加了一个参数，用来表示遍历是从前向后遍历还是从后遍历。
//    - (NSUInteger)indexOfObjectWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL (^)(id obj, NSUInteger idx,BOOL *stop))predicate
//    
//    
//    33、这个添加了参数NSIntexSet 参数，用来获取子数组，然后使用这个子数组进行遍历，处理数据
//    - (NSUInteger)indexOfObjectAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(BOOL (^)(id obj, NSUInteger idx,BOOL *stop))predicate
//    
//    
//    31、 根据block 的处理获取一个NSIndexSet 对象。
//    - (NSIndexSet *)indexesOfObjectsPassingTest:(BOOL (^)(id obj, NSUInteger idx,BOOL *stop))predicate
//    调用如下：
//    NSIndexSet *index = [array indexesOfObjectsPassingTest: ^ BOOL (id tr, NSUInteger index,BOOL *te){
//        
//        NSString *s = (NSString *)tr;
//        if([s isEqualToString:@"andy"]){
//            return YES;
//        }
//        return NO;
//    }];
//    
//    
//    NSLog(@"%@",index);
//    33 、 这个方法添加了参数，用来表示，是从前向后，遍历还是从后向前遍历
//    - (NSIndexSet *)indexesOfObjectsWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL (^)(id obj, NSUInteger idx,BOOL *stop))predicate NS_AVAILABLE(10_6,4_0);
//    
//    
//    调用示例如下:
//    NSIndexSet *index = [array indexesOfObjectsWithOptions:NSEnumerationReverse passingTest: ^ BOOL (id tr, NSUInteger index,BOOL *te){
//        
//        NSString *s = (NSString *)tr;
//        if([s isEqualToString:@"andy"]){
//            return YES;
//        }
//        return NO;
//    }];
//    
//    
//    NSLog(@"%@",index);
//    
//    
//    34、 添加参数NSIndexSet 用来获取子数组，使用子数组进行遍历
//    - (NSIndexSet *)indexesOfObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(BOOL (^)(id obj, NSUInteger idx,BOOL *stop))predicate
//    
//    
//    35、对数组进行排序操作  参数cmptr 是一个block 函数块，返回的数据类型是一个NSComparisonResult 对象
//    - (NSArray *)sortedArrayUsingComparator:(NSComparator)cmptr
//    
//    
//    调用例子如下：
//    NSArray *te = [array sortedArrayUsingComparator:^ NSComparisonResult (NSString *s,NSString *s2){
//        if(s.length < s2.length){
//            return NSOrderedAscending;
//        }
//        if(s.length > s2.length){
//            return NSOrderedDescending;
//        }
//        
//        return NSOrderedSame;
//    }];
//    
//    NSLog(@"te=%@.",te);
//    36、进行排序操作，NSSortOptions 排序的参数 用来表示是同时排序，还是稳定执行。
//    - (NSArray *)sortedArrayWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr NS_AVAILABLE(10_6,4_0);
//    
//    NSArray *test = [array sortedArrayWithOptions:NSSortStable usingComparator:^ NSComparisonResult (NSString *s,NSString *s2){
//        
//        if(s.length < s2.length){
//            return NSOrderedAscending;
//        }
//        if(s.length > s2.length){
//            return NSOrderedDescending;
//        }
//        
//        return NSOrderedSame;
//    }];
//    
//    NSLog(@"%@",test);
    
    
}

/**
 排序的函数（按照的是长度）
 @return 返回一个数组
 */
NSInteger sortType(id st,id str,void *cha)
{
    NSString *s1 = (NSString *)st;
    NSString *s2 = (NSString *)str;
    
    if(s1.length > s2.length)
    {
        return NSOrderedAscending;
    }else if(s1.length < s2.length)
    {
        return NSOrderedDescending;
    }
    
    return NSOrderedSame;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
