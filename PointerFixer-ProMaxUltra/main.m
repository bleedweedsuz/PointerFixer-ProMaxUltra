//
//  main.m
//  PointerFixer-ProMaxUltra
//
//  Created by Suz on 27/03/2025.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>
#import <unistd.h> // for usleep()

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"PointerFixer-ProMaxUltra running...");
        [[NSCursor crosshairCursor] set];
        usleep(100000); // wait for 100 ms
        [[NSCursor arrowCursor] set];
        NSLog(@"Mouse pointer has been reset. Check again if pointer is fix or not. If not write a complain letter to APPLE.");
    }
    return 0;
}
