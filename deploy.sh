#!/bin/bash

# ==========================================
# 🚀 Deploy Script untuk SDN 208 Portal
# ==========================================

echo "🎯 SDN 208 Portal - Deploy Script"
echo "=================================="
echo ""

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Step 1: Check git status
echo "📋 Step 1: Checking git status..."
if [ -z "$(git status --porcelain)" ]; then
    echo -e "${GREEN}✅ No changes to commit${NC}"
    SKIP_COMMIT=true
else
    echo -e "${YELLOW}⚠️  Changes detected${NC}"
    SKIP_COMMIT=false
fi

echo ""

# Step 2: Lint
echo "🔍 Step 2: Running lint..."
if bun run lint; then
    echo -e "${GREEN}✅ Lint passed${NC}"
else
    echo -e "${RED}❌ Lint failed!${NC}"
    exit 1
fi

echo ""

# Step 3: Build
echo "📦 Step 3: Building application..."
if bun run build; then
    echo -e "${GREEN}✅ Build successful${NC}"
else
    echo -e "${RED}❌ Build failed!${NC}"
    exit 1
fi

echo ""

# Step 4: Commit (if needed)
if [ "$SKIP_COMMIT" = false ]; then
    echo "💾 Step 4: Committing changes..."

    # Ask for commit message
    echo ""
    read -p "Enter commit message (or press Enter for default): " COMMIT_MSG

    if [ -z "$COMMIT_MSG" ]; then
        COMMIT_MSG="Update: $(date '+%Y-%m-%d %H:%M:%S')"
    fi

    git add .
    git commit -m "$COMMIT_MSG"

    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✅ Changes committed${NC}"
    else
        echo -e "${RED}❌ Commit failed!${NC}"
        exit 1
    fi
else
    echo "⏭️  Step 4: Skipping commit (no changes)"
fi

echo ""

# Step 5: Push
echo "📤 Step 5: Pushing to GitHub..."
if git push; then
    echo -e "${GREEN}✅ Push successful${NC}"
else
    echo -e "${RED}❌ Push failed!${NC}"
    exit 1
fi

echo ""

# Step 6: Done
echo "=================================="
echo -e "${GREEN}🎉 Deployment successful!${NC}"
echo ""
echo "📝 Next steps:"
echo "   1. Wait 2-3 minutes for Vercel to deploy"
echo "   2. Check Vercel dashboard: https://vercel.com"
echo "   3. Test at: https://sdn208-portal.vercel.app"
echo ""
echo "📖 For Google Sites integration, see: PANDUAN-DEPLOY.md"
echo ""
