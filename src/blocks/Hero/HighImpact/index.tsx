'use client'
import { useHeaderTheme } from '@/providers/HeaderTheme'
import React, { useState, useEffect } from 'react'
import Image from 'next/image'
import type { Page, Media as MediaType } from '@/payload-types'

import { CMSLink } from '@/components/Link'
import { Media } from '@/components/Media'
import RichText from '@/components/RichText'
import { AnimatedGroup } from '@/components/motion/animated-group'
import { cn } from '@/utilities/ui'
import step01Front from './images/step01Front.svg'
import step01Back from './images/step01Back.svg'
import step02Front from './images/step02Front.svg'
import step02Back from './images/step02Back.svg'
import step03Front from './images/step03Front.svg'
import step03Back from './images/step03Back.svg'
import { InfiniteSlider } from '@/components/motion/infinite-slider'
import { AnimatePresence, motion, Variants } from 'motion/react'
import { itemsFling, motionConverters } from '@/components/RichText/motion-converters'
const AUTOPLAY_MS = 2400
const content = [
  {
    title: 'أنشئ منتجات تبرع مخصصة في دقائق',
    description: 'حدد مستويات التبرع، أضف صورًا، وخصص لقضيتك',
    frontImage: step01Front,
    backImage: step01Back,
  },
  {
    title: 'أطلق منصة لجمع التبرعات دون عناء',
    description: 'أطلق متجرًا جذابًا للتفاعل مع المتبرعين',
    frontImage: step02Front,
    backImage: step02Back,
  },
  {
    title: 'تتبع أثرك، وحسّنه، ووسّعه',
    description: 'استخدم أدوات التسويق للتفاعل مع المتبرعين والاحتفاظ بهم',
    frontImage: step03Front,
    backImage: step03Back,
  },
]
export const HighImpactHero: React.FC<Page['hero']> = ({
  links,
  linkText,
  media,
  logos,
  richText,
}) => {
  const [currentIndex, setCurrentIndex] = useState(0)
  // const { setHeaderTheme } = useHeaderTheme()

  // useEffect(() => {
  //   setHeaderTheme('light')
  // })
  useEffect(() => {
    const interval = setInterval(() => {
      setCurrentIndex((prev) => (prev + 1) % content.length)
    }, AUTOPLAY_MS)
    return () => clearInterval(interval)
  }, [currentIndex, AUTOPLAY_MS])

  // useEffect(() => {
  //   setCurrentIndex(0)
  // }, [])

  return (
    <div className="bg-background">
      <motion.div
        variants={containerVariants}
        initial="initial"
        whileInView="animate"
        className="section pb-md lg:gap-site relative flex min-h-[calc(100vh-var(--header-height))] flex-col items-center justify-center overflow-y-hidden lg:h-[calc(100vh-var(--header-height))] lg:flex-row lg:items-center"
      >
        <motion.div className="gap-lg mt-site flex h-full w-full basis-1/2 flex-col items-start overflow-hidden lg:mt-0 lg:max-h-[790px] lg:justify-center lg:py-(--header-height)">
          {richText && (
            <motion.div className="prose-p:text-body-large prose prose-stone max-w-3xl text-balance">
              <RichText
                disableContainer={true}
                converters={motionConverters}
                data={richText}
                enableGutter={false}
              />
            </motion.div>
          )}
          <motion.div className="flex flex-col gap-4">
            {Array.isArray(links) && links.length > 0 && (
              <motion.ul className="flex gap-4 max-md:w-full md:justify-center">
                {links.map(({ link }, i) => {
                  return (
                    <motion.li key={i} variants={itemsFling} className="w-full">
                      <CMSLink
                        {...link}
                        size="lg"
                        className="max-md:w-full"
                        appearance="secondary"
                      />
                    </motion.li>
                  )
                })}
              </motion.ul>
            )}
            {linkText && (
              <p className="text-foreground-tertiary text-sm font-medium">
                <span className="text-foreground-secondary rounded-full bg-stone-950/5 px-2 py-1 text-sm font-medium">
                  حصريا
                </span>{' '}
                {linkText}
              </p>
            )}
          </motion.div>
          {logos && (
            <motion.div variants={itemsFling} className="relative mt-auto w-full">
              <div className="from-background absolute top-0 left-0 z-10 h-full w-12 bg-gradient-to-r to-transparent" />
              <div className="from-background absolute top-0 right-0 z-10 h-full w-12 bg-gradient-to-l to-transparent" />
              <InfiniteSlider gap={48} speed={56}>
                {logos.map((item, index) => (
                  <Media
                    key={index}
                    imgClassName={cn('h-14 w-auto opacity-50 dark:invert')}
                    resource={item}
                  />
                ))}
              </InfiniteSlider>
            </motion.div>
          )}
        </motion.div>
        <motion.div className="py-site _h-full w-full basis-1/2 flex-col justify-center select-none lg:flex lg:p-0">
          <AnimatePresence mode="popLayout">
            <motion.div
              key={currentIndex}
              variants={containerVariants}
              initial="initial"
              animate="animate"
              exit="exit"
              className="relative isolate mx-auto aspect-square h-full w-full max-w-[500px] xl:h-[500px]"
            >
              <motion.div key={`${currentIndex}_back`} variants={imageVariants}>
                <Image
                  src={content[currentIndex]?.backImage}
                  alt={content[currentIndex]?.title || ''}
                  className="z-0 aspect-square h-auto w-full object-contain"
                  priority
                />
              </motion.div>
              <motion.div
                key={`${currentIndex}_front`}
                variants={imageVariants}
                className="absolute inset-0 z-1 aspect-square h-auto w-full"
              >
                <Image
                  src={content[currentIndex]?.frontImage}
                  alt={content[currentIndex]?.title || ''}
                  className="aspect-square h-auto w-full object-contain"
                  priority
                />
              </motion.div>
            </motion.div>
          </AnimatePresence>
          <AnimatePresence mode="wait">
            <motion.div
              key={currentIndex + 'text'}
              style={{
                transformOrigin: 'center',
                marginTop: 'var(--spacing-md)',
              }}
              initial={{ y: 40, rotate: -3, opacity: 0 }}
              animate={{ y: 0, rotate: 0, opacity: 1, transition: { duration: 0.25 } }}
              exit={{ y: -40, rotate: 3, opacity: 0, transition: { duration: 0.25 } }}
              className="flex flex-col items-center gap-2 text-center"
            >
              <p className="text-body-large text-foreground dark:text-zad-gold font-bold">
                {content[currentIndex]?.title}
              </p>
              <p className="text-foreground-tertiary text-body-main">
                {content[currentIndex]?.description}
              </p>
            </motion.div>
          </AnimatePresence>
          {/* {media && typeof media === 'object' && (
            <Media imgClassName="z-10 object-cover" priority resource={media} />
            )} */}
        </motion.div>
      </motion.div>
    </div>
  )
}

const containerVariants: Variants = {
  initial: {
    opacity: 0,
  },
  animate: {
    opacity: 1,
    transition: {
      staggerChildren: 0.2,
      staggerDirection: 1,
    },
  },
  exit: {
    opacity: 0,
    transition: {
      staggerChildren: 0.2,
      staggerDirection: 1,
      delay: 1,
    },
  },
}

const itemVariants: Variants = {
  initial: { x: 100, opacity: 0 },
  animate: {
    x: 0,
    opacity: 1,
    transition: { duration: 0.8, ease: [0.215, 0.61, 0.355, 1] },
  },
  exit: {
    x: -100,
    opacity: 0,
    transition: { duration: 0.8, ease: [0.215, 0.61, 0.355, 1] },
  },
}

const imageVariants: Variants = {
  initial: { x: 100, opacity: 0 },
  animate: {
    x: 0,
    opacity: 1,
    transition: { duration: 0.8, ease: [0.215, 0.61, 0.355, 1] },
  },
  exit: {
    x: -100,
    opacity: 0,
    transition: { duration: 0.8, ease: [0.215, 0.61, 0.355, 1] },
  },
}
