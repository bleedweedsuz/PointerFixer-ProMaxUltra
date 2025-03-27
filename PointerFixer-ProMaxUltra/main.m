//
//  main.m
//  PointerFixer-ProMaxUltra
//
//  Created by Suz on 27/03/2025.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>
#import <unistd.h>

#ifndef VERSION_STRING
#define VERSION_STRING "v0.0.0"
#endif

/**
 * Prints the help message to the console.
 *
 * Usage:
 *   pfix               Reset the mouse pointer
 *   pfix --version     Show version information
 *   pfix --help        Show usage information
 */
void show_help(void) {
    printf("Usage:\n");
    printf("  pfix  Reset the mouse pointer\n");
    printf("  pfix --version or -v  Show version\n");
    printf("  pfix --help or -h     Show this help message\n");
}

/**
 * Fixes the macOS cursor bug where the pointer gets stuck in the wrong style.
 *
 * This function changes the cursor to a crosshair and then resets it to the default arrow
 * after a short delay to force a system-wide pointer update.
 */
void bugFix(void){
    NSLog(@"PointerFixer-ProMaxUltra running...");
    [[NSCursor crosshairCursor] set];
    usleep(100000); // 100 ms delay
    [[NSCursor arrowCursor] set];
    NSLog(@"Mouse pointer has been reset.");
}

/**
 * The main entry point for the CLI tool.
 *
 * Supports the following arguments:
 *   --version or -v  Show version information
 *   --help or -h     Show usage information
 *
 * If no arguments are provided, runs the cursor reset logic.
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        if (argc > 1) {
            if (strcmp(argv[1], "--version") == 0 || strcmp(argv[1], "-v") == 0) {
                printf("pfix version %s\n", VERSION_STRING);
                return 0;
            } else if (strcmp(argv[1], "--help") == 0 || strcmp(argv[1], "-h") == 0) {
                show_help();
                return 0;
            } else {
                printf("Unknown option: %s\n\n", argv[1]);
                show_help();
                return 1;
            }
        }
        bugFix();
    }
    return 0;
}
