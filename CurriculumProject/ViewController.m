//
//  ViewController.m
//  CurriculumProject
//
//  Created by meccatol_iMac on 2017. 5. 16..
//  Copyright © 2017년 meccatol_iMac. All rights reserved.
//

#import "ViewController.h"
#import "SubViewController.h"

//#import "Human+Mouth.h"

@implementation XYZBlockKeeper
- (void)configureBlock {
    XYZBlockKeeper * __weak weakSelf = self;
    self.block = ^{
//        [self print]; // strong reference cycle
        [weakSelf print];
        
        [self print];
        // capturing a strong reference to self
        // creates a strong reference cycle
    };
}
- (void)print {
    NSLog(@"print");
}
@end

@implementation Human
-(id)initWithName:(NSString *)name age:(int)age
{
    self = [super init]; //NSObject를 초기화해서 현재 클래스에 저장
    if (self) { //슈퍼 클래스의 인스턴스가 반환된 경우
        self.name = name;
        self.age = age;
    }
    
    return self;
}

- (id)copyWithZone:(NSZone *)zone
{
    NSLog(@"copyWithZone");
    Human *human = [[[self class] allocWithZone:zone] init];
    [human setName:self.name];
    [human setAge:self.age];
    
    return human;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%p> name:[%@], age:[%zd]", self, _name, _age];
}
//- (void)speak {
//    NSLog(@"왈!");
//}
@end

typedef void (^BinBlock)(void);

@interface ViewController () {
    
}
@property (strong) BinBlock propertyBlock;
@property (copy) BinBlock propertyBlock2;

@property (readwrite, atomic, strong) NSObject *object1;
@property NSObject *object2;

@end

//@interface ViewController () {
//    NSObject * __weak ivar_weak_object;
//}
//@property (assign) NSObject *assignObject1;
//@property (unsafe_unretained) NSObject *assignObject2;
//
//@end

//@interface ViewController () {
//    NSString * __weak ivar_string;
//}
//@property NSString *string;
//@end

typedef struct {
    int i;
    float f;
} MyIntegerFloatStruct;

@implementation ViewController
//@synthesize helloString;

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSInteger int1 = 10;
//    __block NSInteger int2 = 20;
//    BinBlock newBlock = ^{
//        NSLog(@"newBlock!!");
//        int2 += int1;
//        NSLog(@"int2 = %zd", int2);
//        NSLog(@"int1<%p>, int2<%p>", &int1, &int2);
//    };
//    NSLog(@"newBlock = %@ <%p>", newBlock, newBlock);
//    self.propertyBlock = newBlock;
//    NSLog(@"self.propertyBlock = %@ <%p>",
//          self.propertyBlock, self.propertyBlock);
//    newBlock();
//    self.propertyBlock2 = newBlock;
//    NSLog(@"self.propertyBlock2 = %@ <%p>",
//          self.propertyBlock2, self.propertyBlock2);
//    [self checkBlock:newBlock];
    
//    int anInteger = 42;
//    NSString *hello = @"hello";
//    NSLog(@"Integer is: %i, %@", anInteger, hello);
//    NSLog(@"anInteger = %p, hello = %p", &anInteger, hello);
//    void (^testBlock)(void) = ^{
//        NSLog(@"____block started");
//        NSLog(@"Integer is: %i, %@", anInteger, hello);
//        NSLog(@"anInteger = %p, hello = %p", &anInteger, hello);
//    };
//    anInteger = 84;
//    hello = @"~~~~hello~~~~";
//    testBlock();
    
    
//    int anInteger = 42;
//    NSString *hello = @"hello";
//    NSLog(@"Integer is: %i, %@", anInteger, hello);
//    NSLog(@"anInteger = %p, hello = %p", &anInteger, hello);
//    void (^testBlock)(void) = ^{
//        NSLog(@"____block started");
//        NSLog(@"Integer is: %i, %@", anInteger, hello);
//        NSLog(@"anInteger = %p, hello = %p", &anInteger, hello);
//        int anInteger = 20;
//        NSString *hello = @"new_hello";
//        NSLog(@"Integer is: %i, %@", anInteger, hello);
//        NSLog(@"anInteger = %p, hello = %p", &anInteger, hello);
//        // Can't
////        NSLog(@"anInteger2 = %i", anInteger2);
//    };
//    int anInteger2 = 24;
//    anInteger = 84;
//    testBlock();

    
//    __block int anInteger = 42;
//    __block NSString *hello = @"hello";
//    NSLog(@"Integer is: %i, %@", anInteger, hello);
//    NSLog(@"anInteger = %p, hello = %p", &anInteger, hello);
//    void (^testBlock)(void) = ^{
//        NSLog(@"____block started");
//        NSLog(@"Integer is: %i, %@", anInteger, hello);
//        NSLog(@"anInteger = %p, hello = %p", &anInteger, hello);
//        anInteger = 20;
//        hello = @"new_hello";
//        NSLog(@"Integer is: %i, %@", anInteger, hello);
//        NSLog(@"anInteger = %p, hello = %p", &anInteger, hello);
//    };
//    NSLog(@"Integer is: %i, %@", anInteger, hello);
//    NSLog(@"anInteger = %p, hello = %p", &anInteger, hello);
//    anInteger = 84;
//    NSLog(@"Integer is: %i, %@", anInteger, hello);
//    NSLog(@"anInteger = %p, hello = %p", &anInteger, hello);
//    testBlock();
//    NSLog(@"____after block");
//    NSLog(@"Integer is: %i, %@", anInteger, hello);
//    NSLog(@"anInteger = %p, hello = %p", &anInteger, hello);
    
    // empty block
//    void (^emptyBlock)(void);
//    NSLog(@"emptyBlock = %@", emptyBlock);
//    emptyBlock();
    
    
//    void (^testBlock)(void) = ^ {
//        NSLog(@"log log log");
//    };
//    testBlock();
//
//    
//    int (^(^complexBlock)(void (^)(void))    )(void) = ^(void (^aBlock)(void)) {
//        aBlock();
//        NSLog(@"inside");
//        return ^{
//            NSLog(@"returned");
//            return 1;
//        };
//    };
//    int (^returnBlock)(void) = complexBlock(^{
//        NSLog(@"argument");
//    });
//    returnBlock();

    
//    BinBlock block1 = ^{
//        NSLog(@"creating block");
//    };
//    
//    BinBlock (^complexBlock2)(BinBlock) = ^(BinBlock aBlock) {
//        aBlock();
//        NSLog(@"inside of block");
//        return ^{
//            NSLog(@"returned block");
//            return;
//        };
//    };
//    BinBlock returnBlock2 = complexBlock2(^{
//        NSLog(@"argument block");
//    });
//    returnBlock2();
//    
//    void (^ (^complexBlock)(void (^)(void)) )(void) = ^(void (^aBlock)(void)) {
//        aBlock();
//        NSLog(@"inside of block");
//        return ^{
//            NSLog(@"returned block");
//            return;
//        };
//    };
//    void (^returnBlock)(void) = complexBlock(^{
//        NSLog(@"argument block");
//    });
//    returnBlock();
    
    
    void (^arrayOfTenBlocksReturningVoidWithIntArgument[10])(int);
    arrayOfTenBlocksReturningVoidWithIntArgument[0] = ^(int v) {
        
    };
    
    float (^oneFrom)(float);
    
    oneFrom = ^(float aFloat) {
        float result = aFloat - 1.0;
        return result;
    };
    
    NSArray *stringsArray = @[ @"string 1",
                               @"String 21", // <-
                               @"string 12",
                               @"String 11",
                               @"strîng 21", // <-
                               @"striñg 21", // <-
                               @"String 02",
                               @"S",
                               @"SSSSSSSSSSSSS"];

    [stringsArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"obj = %@<%p>", obj, obj);
    }];
    
//    NSMutableArray *mutableStringArray = [stringsArray mutableCopy];
//    [mutableStringArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        NSLog(@"obj = %@<%p>", obj, obj);
//    }];
    
    NSLocale *currentLocale = [NSLocale currentLocale];
    __block NSUInteger orderedSameCount = 0;
    
    NSArray *diacriticInsensitiveSortArray = [stringsArray sortedArrayUsingComparator:^(id string1, id string2) {
        NSLog(@"1 = [%@], 2 = [%@]", string1, string2);
        
        NSRange string1Range = NSMakeRange(0, [string1 length]);
        NSComparisonResult comparisonResult = [string1 compare:string2 options:NSDiacriticInsensitiveSearch range:string1Range locale:currentLocale];
        
        if (comparisonResult == NSOrderedSame) {
            orderedSameCount++;
        }
        return comparisonResult;
    }];
    
    NSLog(@"diacriticInsensitiveSortArray: %@", diacriticInsensitiveSortArray);
    NSLog(@"orderedSameCount: %zd", orderedSameCount);
    
    size_t count = 10;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    dispatch_apply(count, queue, ^(size_t i) {
        printf("%zu\n", i);
    });

    
    void (^blockArray[3])(void);  // an array of 3 block references
    
    for (int i = 0; i < 3; ++i) {
        blockArray[i] = ^{ printf("hello, %d\n", i); };
        // WRONG: The block literal scope is the "for" loop.
    }
    blockArray[0]();
    blockArray[1]();
    blockArray[2]();
    
//    binBlock _block;
//    _Block_copy(&_block);
    
    // 카테고리도 컴파일 단계에서 추가되는것같음
//    Human *human1 = [[Human alloc] initWithName:@"데이빗" age:50];
//    if ([human1 respondsToSelector:@selector(speak)]) {
//        NSLog(@"speak 가능");
//        [human1 performSelector:@selector(speak)];
//    }

    //
//    NSString *string1 = @"before1";
//    NSLog(@"string1 = %@, %p", string1, string1);
//    [self printThisString:string1];
//    NSLog(@"string1 = %@, %p", string1, string1);
//    NSString *string2 = @"before2";
//    NSLog(@"string2 = %@, %p", string2, string2);
//    [self printThisStringAndFix:&string2];
//    NSLog(@"string2 = %@, %p", string2, string2);
//    
//    NSError *error;
//    [self makeError:&error];
//    NSLog(@"after makeError = %@", error);
//    NSError *error2;
//    NSLog(@"error2 = %@", error2);
//    NSLog(@"error2's address = %p", &error2);
//    
//    [self makeError:nil];
//
    
    NSArray *array1 = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7"];
    @try {
        id object = [array1 objectAtIndex:10];
    } @catch (NSException *exception) {
        NSLog(@"exception = %@", exception);
    } @finally {
        NSLog(@"always");
    }
    
    
    // Collecion의 Block Enumeration
//    NSArray *array1 = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7"];
//    NSArray *array2 = [array1 copy];
//    for (int i = 0; i < array1.count; i++) {
//        NSString *s1 = array1[i];
//        NSString *s2 = array2[i];
//        NSLog(@"1:<%p>,2:<%p>, %@", s1, s2, s1);
//    }
//    [array1 enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        NSLog(@"Object at index %lu is %@", idx, obj);
//        if ([obj isEqual:@"3"]) {
//            *stop = YES;
//        }
//    }];
//    NSMutableArray *testArray = [NSMutableArray array];
//    for (int i = 0; i < 10000; i++) {
//        [testArray addObject:[NSString stringWithFormat:@"%zd", i]];
//    }
//    __block NSTimeInterval stamp;
    // stamp = 0.000358
//    [testArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        if (idx == 0) {
//            stamp = [[NSDate date] timeIntervalSince1970];
//        }else if (idx == 9999) {
//            stamp = ([[NSDate date] timeIntervalSince1970] - stamp);
//            NSLog(@"stamp = %f", stamp);
//        }
//    }];
//     stamp = 0.000294
//    [testArray enumerateObjectsWithOptions:NSEnumerationConcurrent
//                                usingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//                                    if (idx == 0) {
//                                        stamp = [[NSDate date] timeIntervalSince1970];
//                                    }else if (idx == 9999) {
//                                        stamp = ([[NSDate date] timeIntervalSince1970] - stamp);
//                                        NSLog(@"stamp = %f", stamp);
//                                    }
//                                }];
    
    // Collection Enumeration 테스트
//    NSSet *set = [NSSet setWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",nil];
//    
//    for (NSString *s in set) {
//        NSLog(@"s = %@", s);
//    }
//    NSEnumerator *enumerator = [set objectEnumerator];
//    id value;
//    while (value = [enumerator nextObject]) {
//        NSLog(@"value = %@", value);
//    }
    
    // 벨류와 콜렉션!
//    MyIntegerFloatStruct aStruct;
//    aStruct.i = 42;
//    aStruct.f = 3.14;
//    
//    NSValue *structValue = [NSValue value:&aStruct
//                             withObjCType:@encode(MyIntegerFloatStruct)];
//    MyIntegerFloatStruct bStruct;
//    [structValue getValue:&bStruct];
//    NSLog(@"bStruct.i = %zd, bStruct.f = %f", bStruct.i, bStruct.f);
//    
//    
//    NSLog(@"structValue = %@", structValue);
//    
//    NSString *stringArray[4] = {@"a",@"b",@"c",@"d"};
//    NSLog(@"stringArray = %@", stringArray[1]);
//    
//    NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:
//                                @"NotNil", @"anObject",
//                                @"Hello, World!", @"helloString",
//                                @42, @"magicNumber",
//                                @"NotNil", @"aValue", nil];
////                                @"isNil?", nil];
//    NSLog(@"dictionary = %@", dictionary);
    
//    NSArray *array = @[@"asfd", @"asdf", nil, @"asdf"];
    
//    NSInteger a = 0;
//    size_t size = sizeof(a);
//    printf("size = %lu", size);
    
    
    // 뭐였지 이건.. 암튼 테스트인데
//    Human *human1 = [[Human alloc] initWithName:@"데이빗" age:50];
//    Human *human2 = [human1 copy];
//    NSLog(@"human1 = %@", human1);
//    NSLog(@"human2 = %@", human2);
//    [human1 setCountry:@"us"];
//    for (int i = 0; i < 1000; i++) {
//        [human1 speak];
//    }
    
    
    // weak 와 unsafe_unretained 테스트
//    __weak NSObject *local_weak_object;
//    
//    __unsafe_unretained NSObject *local_assign_object;
//    NSObject * __unsafe_unretained local_assign_object2;
//    
//    NSObject *someObject = [[NSObject alloc] init];
//    NSLog(@"someObject = %@", someObject);
//    local_weak_object = someObject;
//    ivar_weak_object = someObject;
//    local_assign_object = someObject;
//    [self setAssignObject:someObject];
//    NSLog(@"local_weak_object = %@", local_weak_object);
//    NSLog(@"ivar_weak_object = %@", ivar_weak_object);
//    NSLog(@"local_assign_object = %@", local_assign_object);
//    NSLog(@"self.assignObject = %@", self.assignObject);
//    someObject = nil;
//    NSLog(@"local_weak_object = %@", local_weak_object);
//    NSLog(@"ivar_weak_object = %@", ivar_weak_object);
////    NSLog(@"local_assign_object = %@", local_assign_object2);
//    NSLog(@"self.assignObject = %@", self.assignObject);
    
    //// Local variable의 strong test
//    NSString *originalString = self.string;
//    ivar_string = self.string;
//    self.string = @"NOT ORIGINAL";
//    
//    NSLog(@"originalString = %@", originalString);
//    NSLog(@"ivar_string = %@", ivar_string);
//    NSLog(@"self.string = %@", self.string);
    
    
    //// 초기화 되지 않은 로컬 인스턴스 변수의 nil 여부
//    NSString *adsflkjafsd = @"asdlfjsjakl";
//    NSInteger random = arc4random()%123489;
//    NSLog(@"random = %zd", random);
//    
//    int integer;
//    NSLog(@"integer = %zd", integer);
//    
//    id object = nil;
//    NSLog(@"object = %@", object);
//    [object removeAllObjects];
//    NSLog(@"object = %@", object);
//    
//    SubViewController *subViewController;
//    NSLog(@"subViewController = %@", subViewController);
    
    /// 로컬변수의 nil 자동 초기화
//    id object;
//    NSLog(@"object = %@", object);
//    [object removeAllObjects];
//    NSLog(@"object = %@", object);
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
//    NSLog(@"ivar_string = %@", ivar_string);
    
//    int integer2;
//    NSLog(@"integer2 = %zd", integer2);
//    [self performSelector:@selector(test) withObject:nil afterDelay:2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)test {
//    NSLog(@"ivar_string = %@", ivar_string);
}
- (IBAction)action:(UIButton *)sender {
//    NSLog(@"ivar_string = %@", ivar_string);
//    self.delegate.helloString = @"hello?";
//    [self printHelloString];
    
    if ([self.delegate respondsToSelector:@selector(printHelloString)]) {
        
    }
    
    NSLog(@"self.propertyBlock = %@ <%p>",
          self.propertyBlock, self.propertyBlock);
    NSLog(@"self.propertyBlock2 = %@ <%p>",
          self.propertyBlock2, self.propertyBlock2);
}

- (void)printHelloString {
    NSLog(@"%@", self.delegate.helloString);
}

//- (BOOL)respondsToSelector:(SEL)aSelector {
//    return YES;
//}

- (void)printThisString:(NSString *)__string {
    NSLog(@"%@, %p", __string, __string);
    __string = @"after1";
    NSLog(@"%@, %p", __string, __string);
}
- (void)printThisStringAndFix:(NSString **)__string {
    NSLog(@"what is it? = %p", __string);
    NSLog(@"%@, %p", *__string, *__string);
    *__string = @"after2";
}

- (BOOL)doSomethingThatMayGenerateAnError:(NSError **)error {
    NSLog(@"error's address = %p", error);
    
    if (error) {
        NSLog(@"setting");
        *error = [NSError errorWithDomain:@"com.MyCompany.MyApplication.ErrorDomain"
                                       code:400
                                   userInfo:@{NSLocalizedDescriptionKey:@"help!!"}];
    } else {
        NSLog(@"fail");
        // 크래쉬
//        *error = [NSError errorWithDomain:@"com.MyCompany.MyApplication.ErrorDomain"
//                                     code:400
//                                 userInfo:@{NSLocalizedDescriptionKey:@"help!!"}];
    }
    return NO;
}

- (void (^)(void))newBlock {
    return ^{
        
    };
}

- (void)checkBlock:(BinBlock)block {
    block();
    NSLog(@"block = %@ <%p>", block, block);
    
//    int k = 10;
//    __block int array[k];
    
}
@end
